# This file is calling the files from seeds folder to create the seed data.
Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |file|
    puts "Processing #{file.split('/').last}"
    require file
end