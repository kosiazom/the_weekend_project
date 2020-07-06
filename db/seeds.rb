# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Party.destroy_all
PartyGoer.destroy_all
Promoter.destroy_all
Dj.destroy_all
Review.destroy_all
GuestList.destroy_all


100.times do PartyGoer.create(username: Faker::Internet.username, tagline: Faker::Quote.famous_last_words, age:rand(18..45))
end

10.times do Promoter.create(name: Faker::TvShows::TheFreshPrinceOfBelAir.celebrity)
end

djs = [
    {
        name: "Dj Jazzy Fresh",
        tagline: "The party starter!",
        genre: "Hip Hop"
    },
    {
        name: "Dj Smoov",
        tagline: "Smoover than a baby's bottom",
        genre: "Hip Hop"
    },
    {
        name: "Dj Underdog",
        tagline: "Don't count me out",
        genre: "Hip Hop"
    },
    {
        name: "Dj Dre",
        tagline: "Beats will knock you out",
        genre: "Reggae"
    },
    {
        name: "Dj Friday",
        tagline: "Available on Saturdays too",
        genre: "Reggae"
    },
    {
        name: "Dj Kos",
        tagline: "I roll solo from Kos to Kos",
        genre: "Reggae"
    },
    {
        name: "Dj Array",
        tagline: "Listing all the hits",
        genre: "Old Skool"
    },
    {
        name: "Dj Commit",
        tagline: "To lit to commit",
        genre: "Old Skool"
    },
    {
        name:"Dj Params",
        tagline: " I'm something like a hash but I ain't",
        genre: "Old Skool"
    },
    {
        name: "Dj Paul",
        tagline: "You gon learn today",
        genre: "Country"
    }
]

djs.each do |d|
    Dj.create(d)
end

10.times do Party.create(name:Faker::Kpop.iii_groups, location:Faker::Address.street_address, date:Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today), promoter_id:Promoter.all.sample.id, dj_id:Dj.all.sample.id)
end

20.times do Review.create(title:Faker::TvShows::TheFreshPrinceOfBelAir.quote, content:Faker::TvShows::GameOfThrones.quote, party_goer_id:PartyGoer.all.sample.id, party_id:Party.all.sample.id)
end

30.times do GuestList.create(party_id:Party.all.sample.id, party_goer_id:PartyGoer.all.sample.id)
end

