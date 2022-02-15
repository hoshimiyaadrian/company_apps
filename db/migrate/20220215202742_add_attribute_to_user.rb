class AddAttributeToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :address, :text
    add_column :users, :phone, :string
  end
end
