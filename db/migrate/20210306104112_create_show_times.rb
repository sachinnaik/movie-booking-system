class CreateShowTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :show_times do |t|
      t.integer :movie_id
      t.integer :theatre_id
      t.time :start_time
      t.time :end_time
      t.date :show_date
      t.json :seats

      t.timestamps
    end
  end
end
