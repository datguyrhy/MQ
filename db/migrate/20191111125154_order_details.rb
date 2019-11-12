class OrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.references :menu
      t.references :order
      t.timestamps
    end
  end
end
