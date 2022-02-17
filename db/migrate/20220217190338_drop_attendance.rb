class DropAttendance < ActiveRecord::Migration[7.0]
  def up
    drop_table :attendances
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
