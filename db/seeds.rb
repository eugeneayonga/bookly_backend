# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "🌱 Seeding spices..."


Book.create!([
    {title: "The Great Gatsby", author: "F. Scott Fitzgerald", likes: 0},
    {title: "The Catcher in the Rye", author: "J.D. Salinger", likes: 0},
    {title: "The Grapes of Wrath", author: "John Steinbeck", likes: 0},
    {title: "The Sun Also Rises", author: "Ernest Hemingway", likes: 0},
    {title: "A Game of Thrones", author: "George R.R. Martin", likes: 0},
    {title: "The Lord of the Rings", author: "J.R.R. Tolkien", likes: 0},
    {title: "Zero to One", author: "Peter Thiel", likes: 0},
    {title: "Steve Jobs", author: "Walter Isaacson", likes: 0},
    {title: "The Lean Startup", author: "Eric Ries", likes: 0},
    {title: "The Art of War", author: "Sun Tzu", likes: 0},
    {title: "The Prince", author: "Niccolo Machiavelli", likes: 0},
    {title: "The Art of the Deal", author: "Donald Trump", likes: 0},
    {title: "The 48 Laws of Power", author: "Robert Greene", likes: 0},
    {title: "Execution", author: "Larry Bossidy", likes: 0},
    {title: "The 7 Habits of Highly Effective People", author: "Stephen Covey", likes: 0},
    {title: "The 4-Hour Workweek", author: "Tim Ferriss", likes: 0},
    {title: "The 4-Hour Body", author: "Tim Ferriss", likes: 0},
    {title: "Bad Blood", author: "John Carreyrou", likes: 0},
    {title: "The Hard Thing About Hard Things", author: "Ben Horowitz", likes: 0},
    {title: "The Subtle Art of Not Giving a F*ck", author: "Mark Manson", likes: 0},
])


all_reviews = ["This book is amazing!", "I love this book!", "This book is so good!", "I can't put this book down!", "This book is so interesting!", "This book is so boring!", "This book is so sad!", "This book is so funny!", "This book is so scary!", "This book is so weird!"]

Book.all.each do |book|
    Review.create!(text: all_reviews.sample, book_id: book.id)
end


puts "✅ Done seeding!"