class Schedule < ApplicationRecord
    validates :title, :start_date, :end_date, presence: true
    validate :judge_end_date
    
    def judge_end_date
        if self.end_date && self.start_date && self.end_date < self.start_date || 
            self.end_date && self.end_date < Date.today || !self.end_date
           
           self.errors.add(:end_date, :early)
        end
    end
end
