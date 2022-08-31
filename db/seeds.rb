# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
bob = User.create!(name: "Bob Smith", email: "bob@email.com")
sally = User.create!(name: "Sally Sitwell", email: "Sally@email.com")

gun_violence = Topic.create!( name: 'Gun Violence', keywords: 'shooting "mass shooting" "gun control" "school shooting"')
environmental = Topic.create!( name: 'Environmental', keywords: '"environmental disaster" OR "natural disaster" OR "oil spill" OR "climate change" OR "ecological disaster"')
lgbtq = Topic.create!( name: 'LGBTQ+', keywords: 'LGBTQ+ Transgender "Gay Marriage"')
abortion_rights = Topic.create!( name: 'Abortion Rights', keywords: 'abortion "Roe V. Wade" OR "abortion access" OR "planned parenthood"')
education = Topic.create!( name: 'Education', keywords: 'college OR "access to education" OR "student loan debt" OR "higher education" OR "literacy rates"')
domestic_violence = Topic.create!( name: 'Domestic Violence', keywords: '"domestic violence survivor resource" OR "domestic violence" OR "domestic disturbance"')
computing = Topic.create!( name: 'Free and Open Computing', keywords: '"free and open computing" OR linux OR gnu kde OR gnome')

user_topic1 = UserTopic.create!( user_id: bob.id, topic_id: gun_violence.id)
user_topic2 = UserTopic.create!( user_id: bob.id, topic_id: lgbtq.id)
user_topic3 = UserTopic.create!( user_id: sally.id, topic_id: education.id)
user_topic4 = UserTopic.create!( user_id: sally.id, topic_id: domestic_violence.id)
