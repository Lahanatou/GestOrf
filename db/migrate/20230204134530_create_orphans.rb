class CreateOrphans < ActiveRecord::Migration[6.0]
  def change
    create_table :orphans do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :age
      t.text :image
      t.string :sex

      t.references :hostparent, foreign_key: true
      t.references :originalparent, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
