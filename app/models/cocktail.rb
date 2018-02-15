class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end


# class Restaurant < ApplicationRecord
#   has_many :reviews, dependent: :destroy

#   validates :name, presence: true
#   validates :address, presence: true
#   # validates :phone_number, presence: true
#   CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
#   validates :category, presence: true
#   validates :category, inclusion: { in: CATEGORIES,
#   message: "%{value} is not a valid category" }
# end


