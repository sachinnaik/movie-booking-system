class Order < ApplicationRecord
    belongs_to :movie
    belongs_to :theatre
    belongs_to :show_time
    belongs_to :user

    validates :movie_id, :theatre_id, :show_time_id, :user_id, :seats, presence: true

    INQUEUE = 1
    QUEUESUCCESS = 2

    class << self
        def create_order(record, params)
            order = Order.new
            order.movie_id = record.movie_id
            order.theatre_id = record.theatre_id
            order.show_time_id = record.id
            order.user_id = params[:current_user]
            order.seats = params[:seats]
            order.amount = get_amount(params[:seats])
            if order.save
                # call to send it to queue
            end
        end

        def get_amount(seats)
            total = 0
            seats.each do |seat|
                split_seat = seat.split(".")
                row = split_seat[0]
                amount = row > "D" ? 200 : 140
                total += amount
            end
            total
        end
    end
end
