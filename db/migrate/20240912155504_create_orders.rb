class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string :customer_name
      t.integer :customer_phone
      t.float :total_amount
      t.string :status

      t.timestamps
    end
  end
end
