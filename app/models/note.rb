# Author: Ally Chitwood
# Relationship to notebook by Carter Brown
class Note < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 },
            uniqueness: { case_sensitive: false,  scope: :notebook_id}
  # Note to notebook relationship (1-N)
  belongs_to :notebook
end
