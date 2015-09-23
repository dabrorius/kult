# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

user = User.create( email: 'user@mail.com',
                    password: 'password',
                    password_confirmation: 'password' )
kult = Kult.create( name: 'Cat enthusiasts' )

post1 = Post.create( content: 'I love cats!', user: user, kult: kult )
post2 = Post.create( content: 'Cats are awesome', user: user, kult: kult )

Comment.create( content: 'I completely agree.', user: user, post: post1 )
