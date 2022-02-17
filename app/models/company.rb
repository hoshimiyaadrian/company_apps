class Company < ApplicationRecord
    has_many :agreements
    has_many :users, through: :agreements
end
