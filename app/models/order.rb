class Order < ApplicationRecord
    belongs_to :movie
    belongs_to :theatre
    belongs_to :show_time
    belongs_to :user

    INQUEUE = 1
    QUEUESUCCESS = 2
end
