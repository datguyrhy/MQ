class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.string :title
      t.references :restaurant
      t.references :customer
      t.text :message
      t.string :pickup_location
      t.boolean :discount_achieved, default: false
      t.string :time_limit
      t.timestamps
    end
  end
end
