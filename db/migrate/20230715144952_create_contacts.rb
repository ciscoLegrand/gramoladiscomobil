class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts, id: :uuid do |t|
      t.string :name
      t.text :body
      t.integer :phone
      t.string :email
      t.string :title
      t.jsonb :data, default: {}

      t.timestamps
    end
  end
end
