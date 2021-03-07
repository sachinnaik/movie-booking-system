class Theatre < ApplicationRecord
    has_many :show_times
    
    enum cities: { "1": "Mumbai", "2": "Hyderabad" }
end
