class ShowTime < ApplicationRecord
    belongs_to :movie
    belongs_to :theatre

    validates :movie_id, :theatre_id, presence: true
end
