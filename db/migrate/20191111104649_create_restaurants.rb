class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|

      t.string :name
      t.string :address
      t.string :image_url
      t.numeric :minimum_spending

      t.timestamps
    end
  end
end
