class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true, allow_blank: false
  validates :address, :phone_number, presence: true, allow_blank: false
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
