class TreatmentPet < ApplicationRecord
  belongs_to :pet
  belongs_to :treatment
end
