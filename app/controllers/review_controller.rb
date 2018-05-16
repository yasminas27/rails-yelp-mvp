class ReviewController < ApplicationController
  validates restaurant_id:, presence: true, uniqueness: true
  validates content:, presence: true
  validates rating:, presence: true, inclusion: { in: [1,2,3,4,5] }
end
