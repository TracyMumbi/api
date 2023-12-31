10.times do
    nominee = Nominee.create!(name: Faker::Name.name, votes: rand(1..100))
end

50.times do
    User.create(
      name: Faker::Internet.username,
      email: Faker::Internet.email,
      password: "password",
      gender: Faker::Gender.binary_type,
      status: ["active", "inactive"].sample
    )
  end
  20.times do
  candidate = Candidate.create!(reg_no: rand(1..10), student_name: Faker::Internet.username, student_email: Faker::Internet.email, voting_phone_number: Faker::PhoneNumber.phone_number_with_country_code, department: "Pau", position: "", status: ["active", "inactive"].sample
  )
  end

  20.times do
    vote = Vote.create!(VVPAT_ref: "#359q950450945", condidate_selected: Faker::Name.name, actual_vote_count: rand(1..10))
  end

 campus1 = Campuse.create!(name: "main", location: "Juja", type_campus: "main")
 campus2 = Campuse.create!(name: "Karen", location: "Karen", type_campus: "satellite")
 campus3 = Campuse.create!(name: "Nrb-cbd", location: "Nairobi CBD", type_campus: "satellite")

 hall1 = Hall.create!(name: "Hall1")
 hall2 = Hall.create!(name: "Hall2")
 hall3 = Hall.create!(name: "Hall3")
 hall4 = Hall.create!(name: "Hall4")
 hall5 = Hall.create!(name: "Hall5")
 hall6 = Hall.create!(name: "Hall6")

 position = Position.create!(name: "President")
 position = Position.create!(name: "Vice President")
 position = Position.create!(name: "Secretary")
 position = Position.create!(name: "Delegate")


 50.times do
  messages = Message.create!(sent_from: Faker::Internet.username, body: Faker::Quote.jack_handey)
 end
