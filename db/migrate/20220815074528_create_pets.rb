class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.string :species
      t.integer :age
      t.boolean :availability
      t.float :price
      t.references :shelter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
