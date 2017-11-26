user1 = User.create!(first_name: "Myrtice", last_name: "Johnson", email: "yasmine@pfeffer.name", api_key: "rYLNZ0DzqKiz8+sMCQ8Xly57qu2W+MQHy8NPyBnZ", admin: true)

user2 = User.create!(first_name: "Weston", last_name: "Haley", email: "vivien@beattymosciski.info", api_key: "hcEYXj2uNNB3p8M1TnNPYPKL8YnAQMsZMT52qXGp", admin: false)


account1 = Account.create(user_id: user1.id, date: Time.new.strftime("%Y-%m-%d"), balance: 30.23)
account2 = Account.create(user_id: user2.id, date: Time.new.strftime("%Y-%m-%d"), balance: 50.00)