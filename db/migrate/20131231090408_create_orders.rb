class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :pin_id
      t.string :customer_email
      t.string :customer_name
      t.text :message
      t.integer :customer_mobile

      t.timestamps
    end
  end
end
