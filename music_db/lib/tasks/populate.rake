namespace :db do

  desc "Clear the DB and fill with excellent sample data."

  task :populate => :environment do

    # Give it access to both populator and faker
    require 'populator'
    require 'faker'

    # Clear out every record inside these 3 tables
    [Genre, Artist, Song].each(&:destroy_all)

    # Add fake genres, artists, and songs

    # Creates 5 new Genres with the names from Faker > Hacker
    Genre.populate 5 do |genre|
      genre.genre = Faker::Commerce.department(1, true)

      # Creates 10 new artists and assigns genres and bios
      Artist.populate 10 do |artist|
        artist.name = Faker::Name.first_name
        artist.genre_id = genre.id
        artist.bio = Faker::Lorem.paragraph + "\n\n" + Faker::Lorem.paragraph + "\n\n" + Faker::Lorem.paragraph(5)

        # Creates 5-10 songs
        Song.populate 5..10 do |song|
          song.title = Faker::Company.catch_phrase
          song.artist_id = artist.id
        end # Song
      end # Artist
    end #Genre
    puts "Heck YEAH!  Check that stuff out!"
  end
end