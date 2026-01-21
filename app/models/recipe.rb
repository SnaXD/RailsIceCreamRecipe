class Recipe < ApplicationRecord
  has_many_attached :images
  has_many :favorites, dependent: :destroy
  has_many :favorite_by, through: :favorites, source: :recipe
  belongs_to :user

  has_rich_text :instructions
  has_rich_text :content
end
