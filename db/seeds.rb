User.destroy_all

10.times do |index|
  User.create(
    id: index + 1,
    first_name: "Utilisateur n° #{index + 1}",
    email: "user#{index + 1}@yopmail.com"
  )
end

tp User.all, :email