users = User.order(:created_at).take(6)
50.times do
    content = Faker::Lorem.sentance(5)
    users.each { |user| user.microposts.create!(content: content) }
end