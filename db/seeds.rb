# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
    end

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem ipsum dolor amet listicle bicycle rights post-ironic freegan farm-to-table pour-over heirloom before they sold out crucifix tacos. Paleo selvage kale chips yr copper mug hashtag plaid mlkshk. Franzen trust fund man braid, locavore food truck tote bag microdosing gentrify humblebrag cred before they sold out venmo. Austin bushwick tumeric distillery snackwave lyft brooklyn.",
        topic_id: Topic.last.id
        )
    end

  5.times do |skill|
    Skill.create!(
        title: "rails #{skill}",
        percent_utilized: 15
    )
    end
    8.times do |item|
        Portfolio.create!(
            title: "Portfolio title #{item}",
            subtitle: "Ruby on Rails",
            body:"Lorem ipsum dolor amet salvia cloud bread photo booth, paleo butcher XOXO small batch. You probably haven't heard of them activated charcoal mumblecore, taiyaki quinoa dreamcatcher shabby chic heirloom meditation thundercats franzen succulents kale chips hot chicken single-origin coffee. Sartorial plaid chartreuse XOXO vape, shoreditch pabst williamsburg aesthetic roof party kombucha. Yuccie waistcoat succulents pok pok gochujang chillwave ramps pork belly lyft cliche biodiesel gentrify narwhal snackwave artisan. Shabby chic salvia knausgaard, gochujang distillery cardigan bushwick semiotics vice. Kogi narwhal cronut irony paleo distillery copper mug microdosing chillwave beard mumblecore four dollar toast.",
            main_image:"https://via.placeholder.com/350x200",
            thumb_image:"https://via.placeholder.com/350x200"
        )
        end
    3.times do |technology|
        Technology.create!(
            name: "Technology #{technology}",
            portfolio_id: Portfolio.last.id
        )
        end

    1.times do |item|
       Portfolio.create!(
            title: "Portfolio title #{item}",
            subtitle: "Angular",
            body:"Lorem ipsum dolor amet salvia cloud bread photo booth, paleo butcher XOXO small batch. You probably haven't heard of them activated charcoal mumblecore, taiyaki quinoa dreamcatcher shabby chic heirloom meditation thundercats franzen succulents kale chips hot chicken single-origin coffee. Sartorial plaid chartreuse XOXO vape, shoreditch pabst williamsburg aesthetic roof party kombucha. Yuccie waistcoat succulents pok pok gochujang chillwave ramps pork belly lyft cliche biodiesel gentrify narwhal snackwave artisan. Shabby chic salvia knausgaard, gochujang distillery cardigan bushwick semiotics vice. Kogi narwhal cronut irony paleo distillery copper mug microdosing chillwave beard mumblecore four dollar toast.",
            main_image:"https://via.placeholder.com/350x200",
            thumb_image:"https://via.placeholder.com/350x200"
        )
        end
    puts "Items created"