class Ingredient < ApplicationRecord
  has_many :doses
  # has_many :cocktails, through: :doses => possible, si besoin

  validates :name, uniqueness: true, presence: true
end
