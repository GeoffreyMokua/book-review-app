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

users = User.create([
    {
        email: "john doe",
        password: "1324rf",
    }
])

reviews = Review.create([
{
    rating: "5",
    comment: "I love it",
}
])