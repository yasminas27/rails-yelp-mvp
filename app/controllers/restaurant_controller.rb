class RestaurantController < ApplicationController

validates :name, uniqueness: true, presence: true
validates :address, presence: true
validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

end
