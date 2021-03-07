class Movie < ApplicationRecord
    has_many :show_times
    
    validates :name, presence: true
end
