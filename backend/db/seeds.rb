person = Person.new(
  first_name: "John",
  last_name: "Doe",
  birth_date: Faker::Date.birthday(18, 65),
  phone: Faker::PhoneNumber.phone_number,
)

User.create(email: "test@example.com", password: "12345678", username: "johndoe", person: person)

7.times { |index| Province.create(name: index + 1) }

5.times do
  Canton.create(
    name: Faker::Address.city,
    description: Faker::Lorem.paragraph,
    province: Province.find_by(name: rand(1..7)),
  )
end

5.times do
  District.create(
    name: Faker::Address.city,
    description: Faker::Lorem.paragraph,
    canton: Canton.find(rand(1..5)),
  )
end

10.times do
  district = District.find(rand(1..5))
  Place.create(
    name: Faker::Restaurant.name,
    telephone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    canton: district.canton,
    province: district.canton.province,
    district: district,
  )
end

5.times do
  Category.create(name: Faker::Restaurant.type)
end

20.times do
  parent_category = Category.find(rand(1..5))
  Category.create(name: Faker::Book.genre, parent_id: parent_category.id)
end

5.times do
  CategoryPlace.create(
    category: Category.find(rand(1..10)),
    place: Place.find(rand(1..10)),
  )
end
Admin.create!(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?
