["Admin", "General"].each do |role|
  Role.create(name: role)
end

role = Role.where(name: "Admin")[0]

user = User.new
user.email = "admin@yopmail.com"
user.password = user.password_confirmation = "Movie@123"
user.role_id = role.id
user.save
