class CreateTreatments < ActiveRecord::Migration[7.1]
  def change
    create_table :treatments do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
