class AddReferencesToAgreement < ActiveRecord::Migration[7.0]
  def change
    add_reference :agreements, :user, null: false, foreign_key: true
    add_reference :agreements, :company, null: false, foreign_key: true
  end
end
