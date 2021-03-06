class CreateTheatres < ActiveRecord::Migration[6.1]
  def change
    create_table :theatres do |t|
      t.string :name
      t.string :address
      t.integer :city_id
      t.integer :capacity
      t.integer :sections

      t.timestamps
    end
    add_index :theatres, :name
  end
end
