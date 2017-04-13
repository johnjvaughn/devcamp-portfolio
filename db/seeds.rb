# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: "johnjvaughn@gmail.com",
  password: "chloe1",
  password_confirmation: "chloe1",
  name: "John Vaughn",
  roles: :site_admin
)
puts "JV user created."

topic_titles = ['Ruby', 'PHP', 'Perl', 'JavaScript', 'Stylesheets']
topic_titles.each {|tt| Topic.create!(title: tt) }
puts "#{topic_titles.count} topics created."
  
# 10.times do |i|
#   Blog.create!(
#     title: "My Blog Post #{i}",
#     body: "Sed ut perspiciatis unde omnis
#     iste natus error sit voluptatem 
#     accusantium doloremque laudantium, 
#     totam rem aperiam, eaque ipsa quae ab 
#     illo inventore veritatis et quasi 
#     architecto beatae vitae dicta sunt 
#     explicabo. Nemo enim ipsam voluptatem 
#     quia voluptas sit aspernatur aut odit 
#     aut fugit, sed quia consequuntur magni 
#     dolores eos qui ratione voluptatem 
#     sequi nesciunt. Neque porro quisquam 
#     est, qui dolorem ipsum quia dolor sit 
#     amet, consectetur, adipisci velit, 
#     sed quia non numquam eius modi tempora 
#     incidunt ut labore et dolore magnam a?",
#     topic_id: Topic.last.id
#   )
# end

# puts "10 blog posts created."

skill_data = { 'Ruby' => 25, 'PHP' => 35, 'Perl' => 10, 'JavaScript' => 15, 'Stylesheets' => 15 }
skill_data.each {|skl, pct| Skill.create!(title: skl, percent_utilized: pct) }
puts "#{skill_data.count} skills created."

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. ",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "1 portfolio item created."

3.times do |t|
  Portfolio.last.technologies.create!(
    name: "Technology #{t}"
  )
end

puts "3 technologies created."


