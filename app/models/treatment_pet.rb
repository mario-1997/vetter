class TreatmentPet < ApplicationRecord
  validates :treatment_id, presence: true
  validates :pet_id, uniqueness: true
  belongs_to :pet
  belongs_to :treatment
end
