class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :focus
      t.string :contact
      t.string :address
      t.string :phone
      t.string :rfc
      t.string :email
      t.string :website
      t.string :reference
      t.string :reference2
      t.string :reference3

      t.timestamps
    end
  end
end
