class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :animal_type
      t.string :breed
      t.integer :age
      t.integer :chip_number

      t.timestamps
    end
  end
end
