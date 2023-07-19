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
  candidate = Candidate.create!(reg_no: rand(1..10), student_name: Faker::Internet.username, student_email: Faker::Internet.email, voting_phone_number: 071234567, department: "Pau"
  )