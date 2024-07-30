class CreateTreatmentPets < ActiveRecord::Migration[7.1]
  def change
    create_table :treatment_pets do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :treatment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
