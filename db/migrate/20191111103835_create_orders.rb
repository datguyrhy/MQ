class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.references post_id
      t.references customer_id
      t.float total_payable
      t.timestamps
    end
  end
end
