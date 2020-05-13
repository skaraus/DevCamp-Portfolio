3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 Topics Created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post Number #{blog}",
        body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas interdum hendrerit malesuada. Mauris condimentum purus et ligula aliquam, a consectetur odio tristique. Donec ullamcorper sed lacus sit amet scelerisque. Suspendisse at nisi neque. Duis vestibulum orci accumsan malesuada commodo. Morbi purus erat, consequat at arcu vel, elementum ultrices orci. Pellentesque efficitur ultricies placerat.",
        topic_id: Topic.last.id
    )
end

puts "10 Blog Post Created"

5.times do |skill|
    Skill.create!(
        title: "Skill #{skill}",
        percent_utilized: 15
    )
end

puts "5 Skills Created"

6.times do |item|
    Portfolio.create!(
        title: "Item #{item}",
        subtitle: "Ruby on Rails",
        body: "This is a generic body",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end  
  
3.times do |item|
    Portfolio.create!(
        title: "Item #{item}",
        subtitle: "Angular",
        body: "This is a generic body",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end   

puts "9 Portfolio Items Created"

3.times do |tech|
    Portfolio.last.technologies.create!(
        name: "Tech #{tech + 1}", 
    )

end

puts "3 Technologies Created"