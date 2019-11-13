class CreateCustomerProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_profiles do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.reference :customer
      t.timestamps
    end
  end
end
