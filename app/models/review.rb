class Review < ActiveRecord::Base
  belongs_to :restaurant, dependent: :destroy
  validates :rating, presence: true, inclusion: { in: 1..5 }, numericality: { only_integer: true }
  validates :content, presence: true
end
