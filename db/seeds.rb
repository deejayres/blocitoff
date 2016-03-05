5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all

20.times do
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
end

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{Item.count} to-do's created"
