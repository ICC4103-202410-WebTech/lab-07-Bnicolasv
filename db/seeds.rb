# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

PostTag.delete_all
Post.delete_all
User.delete_all
Tag.delete_all


User.create(
  name:"Benjamin",
  email:"bval@xd.cl",
  password:"xdxdxd"
)
User.create(
  name:"Rodrigo",
  email:"roro@xd.cl",
  password:"jajajaj"
)
User.create(
  name:"John Doe",
  email:"roroal@xd.cl",
  password:"rorororo"
)
User.create(
  name:"Pedro",
  email:"pvil@xd.cl",
  password:"pepepep"
)
User.create(
  name:"Pablo",
  email:"pavil@xd.cl",
  password:"pedritopa"
)


Tag.create(name: "Tag 1")
Tag.create(name: "Tag 2")
Tag.create(name: "Tag 3")
Tag.create(name: "Tag 4")
Tag.create(name: "Tag 5")


PostTag.delete_all

10.times do
  Post.create(
    title: "Post",
    content: "This is a post",
    user_id: User.pluck(:id).sample,
    answers_count: 2,
    likes_count: 3,
    tags: Tag.all.sample(2)
  )
end
