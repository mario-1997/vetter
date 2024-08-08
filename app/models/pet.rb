class Pet < ApplicationRecord
  validates :name, :animal_type, :breed, :age, :client_id, presence: true
  validates :chip_number, uniqueness: {case_sensitive: false}, presence: true
  belongs_to :client
  has_many :treatment_pets
  has_many :treatments, through: :treatment_pets, dependent: :delete_all
end
