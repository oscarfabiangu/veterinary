class CreateServiceOrders < ActiveRecord::Migration
  def change
    create_table :service_orders do |t|
      t.datetime :date
      t.string :observation
      t.integer :price
      t.references :detail_order, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
