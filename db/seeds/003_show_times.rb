movies = Movie.all.pluck(:id)
theaters = Theatre.all

show_times = [ ["12:00", "15:00"], 
    ["15:00", "18:00"], 
    ["18:00", "21:00"], 
    ["21:00", "00:00"] ]

def generate_section()

end

def generate_seats_data(theatre)
    capacity = theatre.capacity    
    seats = {}
    l = 0
    n = 10

    row_alphabet = "A"
    while l < capacity do
        row_elements = {}
        if (capacity - l) < n
            n = capacity - l
        end
        (1..n).map  { |i| row_elements[i] = "" }
        l += n
        seats[row_alphabet] = row_elements
        row_alphabet = row_alphabet.next
    end
    seats
end

theaters.each do |theatre|
    m_id = movies.rotate!.first
    seats_data = generate_seats_data(theatre)

    (Date.today .. (Date.today + 7.days)).each do |d|
        show_times.each do |st|
            ShowTime.create!(
                movie_id: m_id,
                theatre_id: theatre.id,
                start_time: st[0],
                end_time: st[1],
                show_date: d,
                seats: seats_data
            )
        end
    end
end