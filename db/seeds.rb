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

  20.times do
    vote = Vote.create!(VVPAT_ref: "#359q950450945", condidate_selected: Faker::Name.name, actual_vote_count: rand(1..10))
  end

 campus1 = Campuse.create!(name: "main", location: "Juja", type_campus: "main")
 campus2 = Campuse.create!(name: "Karen", location: "Karen", type_campus: "satellite")
 campus3 = Campuse.create!(name: "Nrb-cbd", location: "Nairobi CBD", type_campus: "satellite")
