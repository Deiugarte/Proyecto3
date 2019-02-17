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
