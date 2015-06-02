# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

unless Post.any?

  (1..4).each do |index|
    Post.create(
      title:      Faker::Lorem.sentence(2, false, 4),
      excerpt:    Faker::Lorem.sentence(10, false, 20),
      body:       Faker::Lorem.sentence(30, false, 100),
      image_url:  "http://placehold.it/300&text=#{Faker::Lorem.word.titleize}"
    )
  end

end
