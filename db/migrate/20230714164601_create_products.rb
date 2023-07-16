class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: :uuid do |t|
      t.references :category, null: false, foreign_key: true, type: :uuid
      t.string  :name, null: false
      t.float   :pvp, null: false, default: 0.00
      t.integer :stock, null: false, default: 0
      t.jsonb   :meta_tags
      t.float   :tax, null: false, default: 21.00

      t.timestamps
    end

    add_index :products, :name, unique: true
  end
end
