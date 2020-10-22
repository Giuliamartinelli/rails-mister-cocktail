class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, :cocktail, uniqueness: { scope: [:ingredient, :cocktail] }
  validates :description, presence: true
end
