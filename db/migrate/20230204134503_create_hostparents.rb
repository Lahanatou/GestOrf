class CreateHostparents < ActiveRecord::Migration[6.0]
  def change
    create_table :hostparents do |t|
      t.string :name, null: false
      t.string :adress, null: false
      t.integer :phone, null: false

      t.references :orphan, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
