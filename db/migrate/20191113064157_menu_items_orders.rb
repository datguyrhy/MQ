class MenuItemsOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items_orders do |t|
      t.references :menu
      t.references :order
      t.timestamps
    end
  end
end
