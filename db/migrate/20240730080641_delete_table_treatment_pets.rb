class DeleteTableTreatmentPets < ActiveRecord::Migration[7.1]
  def change
    drop_table :treatment_pets
  end
end
