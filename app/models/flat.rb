class Flat < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :number_of_guests, presence: true, numericality: true, inclusion: { in: [1,2,3,4,5] }
  validates :price_per_night, presence: true, numericality:true

end
