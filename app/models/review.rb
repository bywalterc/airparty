class Review < ApplicationRecord
  belongs_to :space
  belongs_to :user
  validates :content, length: { minimum: 20 }
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [0,1,2,3,4,5] }

end
