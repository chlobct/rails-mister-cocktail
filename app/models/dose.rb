class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :description, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail,  message: "already exists for this cocktail" }
end
