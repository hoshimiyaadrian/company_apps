class RemoveCompanyIdFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :company_id, :integer
  end
end
