10.times do
    nominee = Nominee.create!(name: Faker::Name.name, votes: rand(1..100))
end