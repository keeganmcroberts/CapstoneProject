class Venue < ApplicationRecord
  belongs_to :city
  has_many :concerts 
  has_many :bands, through: :concerts 
end
