# Author: Daniel Greer
# Relationship to notebook by Carter Brown
# #Relationship to theme by Will Greenway
class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
                    format:     { with: VALID_EMAIL_REGEX }

  # User-notebook relationship (1-N)
  has_many :notebooks
  has_one :theme
end
