class Food < ApplicationRecord
  has_one :nutritive #どっちもhas_oneの関係で依存しあっているときは、そちらにもhas_oneを書いて、~~~idをカラムにつける！
  has_many :food_recipes
  has_many :recipes, through: :food_recipes
end
