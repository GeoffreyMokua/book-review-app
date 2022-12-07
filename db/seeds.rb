# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Book.destroy_all
 books = Book.create([{
  title: "Physics",
  author: "Pete Docter",
  description: "A.",
 
},
{
  title: "Biology",
  author: "Pete Docter",
  description: "B.",
 
},
{
 title: "English",
  author: "Pete Doct",
  description: "C.",
  
}])
# p "Created #{Book.count} Books"

users = [
    {
        user_name: "John Doe",
        password: "1324rf",
    }
]
users.each{|user| User.create(user)}
puts "user created and seed"

reviews = [
{
    rating: "1",
    comment: "terrible plot",
    book_id: 1,
    user_id: 1,
},
{
    rating: "2",
    comment: "mid character development",
    book_id: 2,
    user_id: 1,
},
{
    rating: "3",
    comment: "was okey",
    book_id: 3,
    user_id: 1,
}
]

reviews.each{|review| Review.create(review)}
puts "reviews created and seeded"