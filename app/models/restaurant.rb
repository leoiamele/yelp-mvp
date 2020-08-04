class Restaurant < ActiveRecord::Base
  has_many :reviews
  validates :name, :address, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: {in: CATEGORIES }
end
