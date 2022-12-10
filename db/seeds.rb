# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

champion1 = Champion.create(
    {
        name: Faker::Name.name,
        image: Faker::LoremFlickr.image,
        phone_no: Faker::PhoneNumber.cell_phone_with_country_code, 
        email: Faker::Internet.safe_email,
        linkedin_url:"https://www.linkedin.com/in/johnjanedoe/",
        github_url:"https://github.com/johnjanedoe",
        bio: Faker::Lorem.paragraph(sentence_count: 2)
    }
)

champion2 = Champion.create(
    {
        name: Faker::Name.name,
        image: Faker::LoremFlickr.image,
        phone_no: Faker::PhoneNumber.cell_phone_with_country_code, 
        email: Faker::Internet.safe_email,
        linkedin_url:"https://www.linkedin.com/in/johnjanedoe/",
        github_url:"https://github.com/johnjanedoe",
        bio: Faker::Lorem.paragraph(sentence_count: 2)
    }
)

champion3 = Champion.create(
    {
        name: Faker::Name.name,
        image: Faker::LoremFlickr.image,
        phone_no: Faker::PhoneNumber.cell_phone_with_country_code, 
        email: Faker::Internet.safe_email,
        linkedin_url:"https://www.linkedin.com/in/johnjanedoe/",
        github_url:"https://github.com/johnjanedoe",
        bio: Faker::Lorem.paragraph(sentence_count: 2)
    }
)

champion4 = Champion.create(
    {
        name: Faker::Name.name,
        image: Faker::LoremFlickr.image,
        phone_no: Faker::PhoneNumber.cell_phone_with_country_code, 
        email: Faker::Internet.safe_email,
        linkedin_url:"https://www.linkedin.com/in/johnjanedoe/",
        github_url:"https://github.com/johnjanedoe",
        bio: Faker::Lorem.paragraph(sentence_count: 2)
    }
)                    


user1= User.create(
    {
        username: Faker::Name.name,
        email: Faker::Internet.safe_email,
        password: Faker::Lorem.characters(number: 7, min_alpha: 4, min_numeric: 1)
    })

user2= User.create(
    {
        username: Faker::Name.name,
        email: Faker::Internet.safe_email,
        password: Faker::Lorem.characters(number: 7, min_alpha: 4, min_numeric: 1)
    })

user3= User.create(
    {
        username: Faker::Name.name,
        email: Faker::Internet.safe_email,
        password: Faker::Lorem.characters(number: 7, min_alpha: 4, min_numeric: 1)
    })

user4= User.create(
        {
            username: Faker::Name.name,
            email: Faker::Internet.safe_email,
            password: Faker::Lorem.characters(number: 7, min_alpha: 4, min_numeric: 1)
        })


comment1 = Comment.create(
        {
            title: Faker::Lorem.sentence(word_count: 3),
            description:Faker::Lorem.paragraph(sentence_count: 2),
            champion_id: champion1.id,
            user_id: user1.id
        })                                                              

comment2 = Comment.create(
        {
            title: Faker::Lorem.sentence(word_count: 3),
            description:Faker::Lorem.paragraph(sentence_count: 2),
            champion_id: champion1.id,
            user_id: user2.id
        }) 

comment3 = Comment.create(
        {
            title: Faker::Lorem.sentence(word_count: 3),
            description:Faker::Lorem.paragraph(sentence_count: 2),
            champion_id: champion2.id,
            user_id: user2.id
        }) 

comment4 = Comment.create(
        {
            title: Faker::Lorem.sentence(word_count: 3),
            description:Faker::Lorem.paragraph(sentence_count: 2),
            champion_id: champion3.id,
            user_id: user3.id
        }) 

comment5 = Comment.create(
        {
            title: Faker::Lorem.sentence(word_count: 3),
            description:Faker::Lorem.paragraph(sentence_count: 2),
            champion_id: champion4.id,
            user_id: user4.id
        })

