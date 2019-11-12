class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
<<<<<<< HEAD

      t.string :title
      t.text :message
      t.string :pick_up_location
      t.integer :slots_available
      t.integer :slots_left
      t.references :customer_id
      t.references :restaurant_id
      t.boolean :sent
      t.boolean :received 
=======
      t.string :title
      t.references :restaurant
      t.references :customer
      t.text :message
      t.string :pickup_location
      t.boolean :order_sent
      t.boolean :received
      t.string :time_limit
      t.integer :slots_available
      t.integer :slot_left
>>>>>>> e9ebcc37c9a1a4daef082a04989256704512eaa8
      t.timestamps
    end
  end
end
