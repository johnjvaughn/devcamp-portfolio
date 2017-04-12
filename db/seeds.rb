# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: "test@test.com",
  password: "chloe1",
  password_confirmation: "chloe1",
  name: "Admin User",
  roles: :site_admin
)
puts "One admin user created"

User.create!(
  email: "test2@test.com",
  password: "chloe1",
  password_confirmation: "chloe1",
  name: "Regular User",
)
puts "One regular user created"

3.times do |t|
  Topic.create!(
    title: "Topic #{t}"
  )
end

puts "3 topics created"
  
10.times do |i|
  Blog.create!(
    title: "My Blog Post #{i}",
    body: "Sed ut perspiciatis unde omnis
    iste natus error sit voluptatem 
    accusantium doloremque laudantium, 
    totam rem aperiam, eaque ipsa quae ab 
    illo inventore veritatis et quasi 
    architecto beatae vitae dicta sunt 
    explicabo. Nemo enim ipsam voluptatem 
    quia voluptas sit aspernatur aut odit 
    aut fugit, sed quia consequuntur magni 
    dolores eos qui ratione voluptatem 
    sequi nesciunt. Neque porro quisquam 
    est, qui dolorem ipsum quia dolor sit 
    amet, consectetur, adipisci velit, 
    sed quia non numquam eius modi tempora 
    incidunt ut labore et dolore magnam a?",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created."

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created."

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. ",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Angular",
    body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. ",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created."

3.times do |t|
  Portfolio.last.technologies.create!(
    name: "Technology #{t}"
  )
end

puts "3 technologies created."


