class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :desc
      t.boolean :is_active
      t.string :language

      t.timestamps
    end
    add_index :movies, :name
    add_index :movies, :language
  end
end
