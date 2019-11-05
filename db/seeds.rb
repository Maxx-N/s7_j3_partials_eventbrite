User.destroy_all
Event.destroy_all
Attendance.destroy_all

10.times do |index|
  User.create(
    id: index + 1,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "user#{index + 1}@yopmail.com",
    password: "pppppp"
  )
end

10.times do |index|
  e = Event.new
    e.id = index + 1
    e.start_date = Faker::Date.between(from: Date.today, to: 364.day.from_now)
    e.duration = rand(5..300)
    until e.duration_is_multiple_of_5?
      e.duration = rand(5..300)
    end
    e.title = Faker::Game.title[0..140]
    e.description = Faker::Lorem.characters(number: 140)
    e.price = rand(1..100)
    e.location = Faker::Restaurant.name
    e.organizer = User.all.sample
    e.save
end

10.times do |index|

end

tp User.all, :email