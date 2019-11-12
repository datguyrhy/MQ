class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
<<<<<<< HEAD

      t.string name
      t.string address
      t.string image_url
      t.float minimum_spending
=======
      t.string :name
      t.string :address
      t.string :image_url
      t.numeric :minimum_spending
>>>>>>> e9ebcc37c9a1a4daef082a04989256704512eaa8
      t.timestamps
    end
  end
end
