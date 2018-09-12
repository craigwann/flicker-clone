Image.destroy_all
User.destroy_all

25.times do |index|
  User.create!(email: Faker::Internet.email,
    password: "password"
  )
end

user_list = User.all.ids

User.all.each do |user|
  3.times do |boop|
    file_name = [Faker::Name.first_name]
    title_name = [Faker::Name.last_name]
    comment = [Faker::Lorem.paragraph_by_chars(14, false), Faker::Lorem.paragraph_by_chars(25, false), Faker::Lorem.paragraph_by_chars(40, false)]

    user.images.create!(files: file_name.sample,
                    title: title_name.sample,
                    comments: [comment.sample, comment.sample, comment.sample],
                    favorites: [user_list.sample, user_list.sample, user_list.sample, user_list.sample],
                    tags: [user_list.sample, user_list.sample, user_list.sample, user_list.sample])
  end
end
