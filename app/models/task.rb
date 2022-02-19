class Task < ApplicationRecord
    belongs_to :user

    enum task_status: [:signed, :onprogress, :underreview, :undertest]
    after_initialize :set_default_task_status, :if => :new_record?
    def set_default_task_status
        self.task_status
    end
end
