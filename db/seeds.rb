# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
bob = User.create!(name: "Bob Smith", email: "bob@email.com")

gun_violence = Topic.create!( name: 'Gun Violence')
environmental = Topic.create!( name: 'Environmental')
lgbtq = Topic.create!( name: 'LGBTQ+')
abortion_rights = Topic.create!( name: 'Abortion Rights')
education = Topic.create!( name: 'Education')
domestic_violence = Topic.create!( name: 'Domestic Violence')
computing = Topic.create!( name: 'Free and Open Computing')

user_topic1 = UserTopic.create!( user_id: bob.id, topic_id: gun_violence.id)
user_topic2 = UserTopic.create!( user_id: bob.id, topic_id: lgbtq.id)
