class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :description
      t.string :state
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
