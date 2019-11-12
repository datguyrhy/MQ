class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.references :restaurant
      t.references :customer
      t.text :message
      t.string :pickup_location
      t.boolean :order_sent
      t.boolean :received
      t.string :time_limit
      t.integer :slots_available
      t.integer :slots_left
      t.timestamps
    end
  end
end
