namespace :db do
  task populate: :environment do

    User.destroy_all

    def random_role
      ['admin', 'player'].sample
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

  end
end
