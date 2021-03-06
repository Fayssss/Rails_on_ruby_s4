# This file should contain all the record creation needed to seed the database with its default values.

# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do 
  cours = Course.create(
    title: Faker::BackToTheFuture.character,
    description: Faker::BackToTheFuture.quote
  )
end

5.times do 
  lessons = Lesson.create(
    title: Faker::BackToTheFuture.character,
    body: Faker::BackToTheFuture.quote,
    course_id: rand((Course.first.id)..(Course.last.id))
  )
end