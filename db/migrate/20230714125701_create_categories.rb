class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories, id: :uuid do |t|
      t.string :name, null: false
      t.uuid :parent_id
      t.integer :level, null: false, default: 0
      t.string :icon

      t.timestamps
    end
    add_index :categories, :name, unique: true
  end
end
