user1 = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email
        )

user2 = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email
        )


account1 = Account.create(user_id: user1.id, date: Time.new.strftime("%Y-%m-%d"), balance: 30.23)
account2 = Account.create(user_id: user2.id, date: Time.new.strftime("%Y-%m-%d"), balance: 50.00)