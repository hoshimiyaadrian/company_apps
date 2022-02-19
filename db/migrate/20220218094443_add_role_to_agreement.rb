class AddRoleToAgreement < ActiveRecord::Migration[7.0]
  def change
    add_column :agreements, :role, :integer, :default => 0
  end
end
