movies = [ {name: "Tom & Jerry", is_active: true, language: "English"}, 
    {name: "Master", is_active: true, language: "Telugu"},
    {name: "Wonder Women", is_active: true, language: "English"},
    {name: "Rakshak", is_active: true, language: "Hindi"},
    {name: "Ramprasad", is_active: true, language: "Hindi"},
    {name: "Monster", is_active: true, language: "Hindi"},
    {name: "Suspense", is_active: true, language: "Hindi"},
    {name: "Uppena", is_active: true, language: "Telugu"},
    {name: "Chakra", is_active: true, language: "Hindi"},
    {name: "Tuesday", is_active: true, language: "Hindi"} ]

movies.each do |movie|
    Movie.find_or_create_by(movie)
end