class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail_id, :ingredient_id, presence: true
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
  # gere grace au belongs_to
  # validates :cocktail, uniqueness: { scope: :ingredient }
  # on aurait pu l'ecrire aussi comme ca
end
