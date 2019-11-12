class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.string :title
      t.text :message
      t.string :pick_up_location
      t.integer :slots_available
      t.integer :slots_left
      t.references :customer_id
      t.references :restaurant_id
      t.boolean :sent
      t.boolean :received 
      t.timestamps
    end
  end
end
