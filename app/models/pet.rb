class Pet < ApplicationRecord
  validates :name, :animal_type, :breed, :age, :chip_number, :client_id, presence: true
  belongs_to :client
  has_many :treatment_pets
  has_many :treatments, through: :treatment_pets
end
