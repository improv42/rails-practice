namespace :db do
  desc 'Clear the database and fill it in with excellent sample data'

  task populate: :environment do
    # Give it access to populator and faker
    require 'populator'
    require 'faker'

    # Clear out every record inside the tables
    [Owner, Dog].each(&:destroy_all)

    # Add fake information
    Owner.populate 30 do |owner|
      owner.name = Faker::Name.name
      owner.phone = Faker::PhoneNumber.cell_phone

      Dog.populate 1..6 do |dog|
        dog.name = Faker::Name.last_name
        dog.breed = Faker::App.name
        dog.age = rand(1..16)
        dog.owner_id = owner.id
      end # Dog
    end # Owner
  end
  puts 'What the MATH! Thats a LOT of stuff!!!'
end
