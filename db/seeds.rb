require 'faker'

Teacher.create!(name: "Steven Johnson", subject: "Natural Sciences")

10.times do
  Student.create!(
    name: Faker::Name.name,
    grade: Faker::Number.between(from: 9, to: 16),
    teacher_id: 1
  )
end

puts "#{Student.count} students created"