class Recipe < ApplicationRecord
  ratyrate_rateable "rating"
  belongs_to :user
  belongs_to :category
end
