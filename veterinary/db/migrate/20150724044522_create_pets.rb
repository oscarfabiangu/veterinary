class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :race
      t.string :age
      t.string :weight
      t.string :sex
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
