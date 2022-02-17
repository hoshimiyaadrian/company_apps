class CreateAgreements < ActiveRecord::Migration[7.0]
  def change
    create_table :agreements do |t|
      t.string :job_title
      t.text :job_desc
      t.string :department
      t.integer :salary
      t.date :start_date
      t.date :end_date
      t.string :working_hours

      t.timestamps
    end
  end
end
