class CreateOriginalparents < ActiveRecord::Migration[6.0]
  def change
    create_table :originalparents do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :phone, null: false

      t.timestamps
    end
  end
end
