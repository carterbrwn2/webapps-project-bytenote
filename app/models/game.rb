# Author: Nathan Simpson - all
class Game < ApplicationRecord
  validates :title, presence: true,
            length: {minimum: 5}
end
