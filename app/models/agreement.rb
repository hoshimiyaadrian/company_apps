class Agreement < ApplicationRecord
    belongs_to :user
    belongs_to :company

    enum role: [:user, :intern, :developer, :HR, :SectionHead, :HigherUps]
    
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
        self.role ||= :user
    end
end
