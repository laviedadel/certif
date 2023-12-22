require 'faker'

puts "Destroying users..."
User.destroy_all
puts "Done!"

puts "Creating users..."
tim = User.create!(
  nickname: "tim",
  email: "tim@tim.tim",
  password: "secret"
)
frodo = User.create!(
  nickname: "balou",
  email: "fbaggins@hobbits.com",
  password: "secret"
)

adel = User.create!(
  nickname: "adel",
  email: "ade@mail.com",
  password: "secret"
)
puts "Done!"

puts "Creating posts..."


10.times do
  Post.create!(
    url: Faker::Internet.url,
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Lorem.paragraph(sentence_count: 10),
    # image_url: Faker::LoremFlickr.image,
    user: [tim, frodo, adel].sample
  )
end
puts "Done!"

puts "Creating comments..."
Post.all.sample(2).each do |post|
  Comment.create!(
    content: "Very good article, thanks for sharing",
    post: post,
    user: frodo
  )
end
puts "Done!"
