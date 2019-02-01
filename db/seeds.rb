User.create!(
    email: "test@test.com",
    password: "asdfasdf",
    password_confirmation: "asdfasdf",
    name: "Admin User",
    roles: "site_admin"
  )

  User.create!(
    email: "test2@test.com",
    password: "asdfasdf",
    password_confirmation: "asdfasdf",
    name: "Regular User",
  )

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

    Skill.create!(
        title: "SQL",
        percent_utilized: 75
    )

    Skill.create!(
        title: "Ruby",
        percent_utilized: 50
    )

    Skill.create!(
        title: "RoR",
        percent_utilized: 50
    )

    Skill.create!(
        title: "SCRUM",
        percent_utilized: 100
    )

    Skill.create!(
        title: "Communication",
        percent_utilized: 100
    )

    Skill.create!(
        title: "English",
        percent_utilized: 100
    )

    Skill.create!(
        title: "German",
        percent_utilized: 50
    )
        Portfolio.create!(
            title: "My Own Website",
            subtitle: "https://github.com/MonikaMusial/my-portfolio",
            body:"This is a Ruby on Rails 5 application that allows users to create their own portfolios and blogs. Using this application I created my own website that includes my portfolio. Moreover it includes following features: real time chat engine for comments, managing Blogs, managing Portfolios, drag and drop interface and connection to Twitter to grab Tech News",
            main_image: File.open(Rails.root.join('app/assets/images/blog.jpg'), filename: 'blog.jpg', content_type: 'image/png'),
            thumb_image: File.open(Rails.root.join('app/assets/images/blog.jpg'), filename: 'blog.jpg', content_type: 'image/png')
          )

        Technology.create!(
            name: "Ruby on Rails 5",
            portfolio_id: Portfolio.last.id
        )

        Technology.create!(
            name: "PostgreSQL",
            portfolio_id: Portfolio.last.id
        )

        Technology.create!(
            name: "Javascript/CSS/Bootstrap",
            portfolio_id: Portfolio.last.id
        )

        Portfolio.create!(
            title: "App created during Netguru College RoR",
            subtitle: "https://github.com/MonikaMusial/splitter",
            body:"This is a Ruby on Rails 5 application for splitting money between group of friends called Splitter. It allows users to create events, add participants and share costs between them.",
            main_image: File.open(Rails.root.join('app/assets/images/splitter.jpg'), filename: 'splitter.jpg', content_type: 'image/png'),
            thumb_image: File.open(Rails.root.join('app/assets/images/splitter.jpg'), filename: 'splitter.jpg', content_type: 'image/png')
            )

        Technology.create!(
            name: "Ruby on Rails 5",
            portfolio_id: Portfolio.last.id
        )

        Technology.create!(
            name: "PostgreSQL",
            portfolio_id: Portfolio.last.id
        )

        Technology.create!(
            name: "Javascript/CSS/Bootstrap/JQuery",
            portfolio_id: Portfolio.last.id
        )

        Portfolio.create!(
            title: "Ruby Bootcamp",
            subtitle: "https://github.com/MonikaMusial/bootcamp",
            body:"I took part in 4-week programming Bootcamp in Ruby and RoR, organised by Elpassion. It included creating Ruby algorithms using best practices: SOLID, DRY, YAGNI, writing specs using UnitTest and RSpec, working with legacy code and external API and creating RoR application.",
            main_image: File.open(Rails.root.join('app/assets/images/image.jpg'), filename: 'image.jpg', content_type: 'image/png'),
            thumb_image: File.open(Rails.root.join('app/assets/images/image.jpg'), filename: 'image.jpg', content_type: 'image/png')
            )

        Technology.create!(
            name: "Ruby",
            portfolio_id: Portfolio.last.id
        )

        Technology.create!(
            name: "Ruby on Rails 5 / PostgreSQL /Bootstrap",
            portfolio_id: Portfolio.last.id
        )

        Technology.create!(
            name: "Sinatra",
            portfolio_id: Portfolio.last.id
        )

        Portfolio.create!(
            title: "My first RoR app",
            subtitle: "https://github.com/MonikaMusial/ihaveanidea",
            body: "It is my first RoR app (https://ihaveanidea.herokuapp.com) that allows group of friends to create new ideas/actions that they want to try in order to encourage others to join them. It allows adding ratings to these ideas.",
            main_image: File.open(Rails.root.join('app/assets/images/ideas.jpg'), filename: 'ideas.jpg', content_type: 'image/png'),
            thumb_image: File.open(Rails.root.join('app/assets/images/ideas.jpg'), filename: 'ideas.jpg', content_type: 'image/png')
            )

        Technology.create!(
            name: "Ruby on Rails 5",
            portfolio_id: Portfolio.last.id
        )

        Technology.create!(
            name: "PostgreSQL",
            portfolio_id: Portfolio.last.id
        )

        Technology.create!(
            name: "Javascript/CSS/Bootstrap/JQuery",
            portfolio_id: Portfolio.last.id
        )


