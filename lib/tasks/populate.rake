namespace :db do
  task populate: :environment do

    User.destroy_all
    Player.destroy_all
    Admin.destroy_all

    # creates random role att
    def random_role
      ['admin', 'player'].sample
    end

    # create random gender
    def random_gender
      ['female', 'male'].sample
    end

    100.times do
      User.create(
        first_name: FFaker::Name.first_name,
        last_name: FFaker::Name.last_name,
        email: FFaker::Internet.email,
        phone: FFaker::PhoneNumber.phone_number,
        role: random_role
        )
    end

    100.times do
      Player.create(
        first_name: FFaker::Name.first_name,
        last_name: FFaker::Name.last_name,
        email: FFaker::Internet.email,
        gender: random_gender
        )
    end

    100.times do
      Admin.create(
        first_name: FFaker::Name.first_name,
        last_name: FFaker::Name.last_name,
        email: FFaker::Internet.email,
        username: FFaker::Internet.user_name,
        password: FFaker::Internet.password(8,12)
        )
    end



  end
end
