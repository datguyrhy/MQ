class OrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :OrderDetails do |t|
      t.references :menu
      t.references :order
      t.timestamps
    end
  end
end
