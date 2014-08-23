class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :admin, index: true
      t.string :token
      t.integer :amount_in_cents
      t.text :description
      t.string :email
      t.string :name
      t.string :address
      t.string :stripe_charge_id
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
