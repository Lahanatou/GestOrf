class CreateHostparents < ActiveRecord::Migration[6.0]
  def change
    create_table :hostparents do |t|
      t.string :name, null: false
      t.string :adress, null: false
      t.integer :phone, null: false

      t.timestamps
    end
  end
end
