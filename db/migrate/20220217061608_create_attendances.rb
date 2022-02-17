class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.date :date_of_attendance
      t.time :time_of_attendance
      t.time :time_of_leaving

      t.timestamps
    end
  end
end
