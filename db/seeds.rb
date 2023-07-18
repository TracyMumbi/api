10.times do
    nominee = Nominee.create!(name: Faker::Name.name, votes: rand(1..100))
end

50.times do
    User.create(
      name: Faker::Internet.username,
      email: Faker::Internet.email,
      password: "password",
      gender: Faker::Gender.binary_type,
    )
  end