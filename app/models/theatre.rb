class Theatre < ApplicationRecord
    has_many :show_times
    
    validates :name, presence: true
    enum cities: { "1": "Mumbai", "2": "Hyderabad" }
end
