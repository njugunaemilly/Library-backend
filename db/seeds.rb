# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# authors = Author.create([{ name: 'Patrick Kisyula' }, { name: 'Felix Irungu' },  { name: 'Emilly Wanjiku' }, { name: 'Esther Githinji' }])
# users = User.create([{username: 'kama', email: 'kama@gmail.com', password: '1234'}, {username: 'baka', email: 'baka@gmail.com', password: '5678'}])
# books = Book.create([{name: 'WILL', description: "Will Smith isn't holding back in his bravely inspiring new memoir . . . An ultimately heartwarming read, Will provides a humane glimpse of the man behind the actor, producer and musician, as he bares all his insecurities and trauma", cover: 'https://images.app.goo.gl/Aif8iMvPLRUR1aKc8', author_id:1}])
reviews = Review.create([{comment: 'magnificent',  user_id:1,  book_id:1}, {comment:'let down', user_id:2, book_id:1}])
