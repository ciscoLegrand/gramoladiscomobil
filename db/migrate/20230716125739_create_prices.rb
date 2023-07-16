class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices, id: :uuid do |t|
      t.references :priciable, polymorphic: true, null: false, type: :uuid
      t.decimal :vat
      t.decimal :amount
      t.virtual :amount_in_cents, type: :integer, as: "amount * 100", stored: true
      t.virtual :amount_w_vat, type: :integer, as: "(amount + (amount * vat / 100)) * 100", stored: true
      t.virtual :amount_no_vat, type: :integer, as: "(amount - (amount * vat / 100)) * 100", stored: true
      t.timestamps
    end
  end
end
