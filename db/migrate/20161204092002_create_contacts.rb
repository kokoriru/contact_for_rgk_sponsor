class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :company_name
      t.string :your_name
      t.string :your_mail_address
      t.text :company_information
      t.string :company_hp_url
      t.boolean :lightning_talk
      t.boolean :pamphlet
      t.integer :sponsorship
      t.string :invoice_name
      t.boolean :invoice_item
      t.text :invoice_item_other
      t.boolean :invoice_sending
      t.integer :envelope_postal_code
      t.string :envelope_address
      t.string :envelope_department
      t.string :envelope_name
      t.string :envelope_mail_address
      t.text :etc

      t.timestamps
    end
  end
end
