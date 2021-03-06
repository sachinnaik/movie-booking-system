theatres = [ {name: "Arjun", city_id: 1 }, 
    {name: "Laxmi", city_id: 1 }, 
    {name: "Gitanjali", city_id: 1 },
    {name: "Roxy", city_id: 1 }, 
    {name: "Galaxy", city_id: 1 }, 
    {name: "Satyam", city_id: 1 },
    {name: "Eros", city_id: 1 },
    {name: "New Empire", city_id: 1 },
    {name: "Raviraj", city_id: 1 },
    {name: "Metro", city_id: 1 } ]
theatres.each do |theatre|
    Theatre.find_or_create_by(theatre)
end

all_theatres = Theatre.all
all_theatres.each do |theatre|
    theatre.capacity = rand(100..150)
    theatre.sections = 2
    theatre.save
end