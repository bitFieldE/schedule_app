class Schedule < ApplicationRecord
    validates :title, :start_date, :end_date, presence: true
   # validate
end
