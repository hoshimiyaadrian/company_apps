class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.text :task_desc
      t.integer :task_status, :default => 0

      t.timestamps
    end
  end
end
