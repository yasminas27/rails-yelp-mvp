class Review < ApplicationRecord
  belongs_to :restaurant
  # validates :restaurant_id, presence: true (deja valide par la ligne au dessus)
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5) }, numericality: { only_integer: true }
end
