theatres = [ {name: "Screen 10", city_id: 1 }, 
    {name: "Screen 1", city_id: 1 }, 
    {name: "Screen 2", city_id: 1 },
    {name: "Screen 3", city_id: 1 }, 
    {name: "Screen 4", city_id: 1 }, 
    {name: "Screen 5", city_id: 1 },
    {name: "Screen 6", city_id: 1 },
    {name: "Screen 7", city_id: 1 },
    {name: "Screen 8", city_id: 1 },
    {name: "Screen 9", city_id: 1 } ]
theatres.each do |theatre|
    Theatre.find_or_create_by(theatre)
end

all_theatres = Theatre.all
all_theatres.each do |theatre|
    theatre.capacity = rand(100..150)
    theatre.sections = 2
    theatre.save
end