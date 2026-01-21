class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_recipes, through: :favorites, source: :recipe
  has_many :recipes, dependent: :destroy
  normalizes :email_address, with: ->(e) { e.strip.downcase }

  def favorite?(recipe)
    favorite_recipes.exists?(recipe.id)
  end

end
