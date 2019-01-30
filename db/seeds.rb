require 'faker'

10.times do
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

40.times do
    pin = Pin.create!(pin: Faker::Food.dish, user_id: (1+rand(9)))
end

100.times do
    comment = Comment.create!(comment: Faker::GreekPhilosophers.quote, user_id: (1+rand(9)), pin_id: (1+rand(39)))
end