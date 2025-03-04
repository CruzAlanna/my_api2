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


i = 1
5.times do 
  Product.create(
    name: "t-product #{i}",
    price: 100,
    published: true
  )
  i += 1 
end

i = 1
5.times do 
  Product.create(
    name: "f-product #{i}",
    price: 50,
    published: false
  )
  i += 1 
end