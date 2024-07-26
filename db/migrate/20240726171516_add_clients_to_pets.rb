class AddClientsToPets < ActiveRecord::Migration[7.1]
  def change
    add_reference :pets, :client, null: false, foreign_key: true
  end
end
