class Treatment < ApplicationRecord
  has_many :treatment_pets
  has_many :pets , through: :treatment_pets
end
