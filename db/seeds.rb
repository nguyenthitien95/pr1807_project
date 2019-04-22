User.create!(name:  "tien tien",
             email: "tientien@gmail.com",
             password:              "xxxxxx",
             password_confirmation: "xxxxxx",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)


10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
              activated_at: Time.zone.now)
end
users = User.order(:created_at).take(6)
10.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end