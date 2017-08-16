# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = ["News", "Programming", "Design"]

categories.each do |name|
  Category.create(name: name)
end

posts = [
    ["First post", "This is some sample text for the first post", 1, 1],
    ["Second post", "This is another sample text for the second post", 1, 1],
    ["Third post", "This is another sample text for the third post", 1, 1],
    ["Fourth post", "This is another sample text for the fourth post", 1, 1]
]

posts.each do |title, body, category_id, author_id|
  Post.create(title: title, body: body, category_id: category_id, author_id: author_id)
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?