class Company < ApplicationRecord
    has_many :agreements
    has_many :users, through: :agreements

    accepts_nested_attributes_for :users, allow_destroy: true
end
