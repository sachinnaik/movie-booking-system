class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :movie_id
      t.integer :theatre_id
      t.integer :show_time_id
      t.integer :user_id
      t.json :seats
      t.integer :queue_status, default: 0
      t.decimal :amount, :precision => 8, :scale => 2, :default => 0.00
      t.string :payment_mode

      t.timestamps
    end
  end
end
