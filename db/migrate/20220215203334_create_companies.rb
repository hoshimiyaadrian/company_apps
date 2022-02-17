class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :ceo_name
      t.integer :company_revenue
      t.integer :company_profit
      t.text :company_address

      t.timestamps
    end
  end
end
