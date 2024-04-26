# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all

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

Post.create(
  title:"1er post",
  content:"Es mi 1er post",
  user_id:1,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"1er post",
  content:"Es mi 1er post",
  user_id:2,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"2do post",
  content:"Es mi 2do post",
  user_id:2,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"3er post",
  content:"Es mi 1er post",
  user_id:2,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"1er post",
  content:"Es mi 1er post",
  user_id:3,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"2do post",
  content:"Es mi 2d0 post",
  user_id:3,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"1er post",
  content:"Es mi 1er post",
  user_id:4,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"2d post",
  content:"Es mi 2do post",
  user_id:4,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"1er post",
  content:"Es mi 1er post",
  user_id:5,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"3er post",
  content:"Me equivoqué xd",
  user_id:5,
  answers_count:2,
  likes_count:3
)
Post.create(
  title:"Holaaa",
  content:"Soy nuevo",
  user_id:1,
  answers_count:2,
  likes_count:3
)

Tag.create(
  name: "Juegos"
)
Tag.create(
  name: "Vida"
)
Tag.create(
  name: "Moda"
)
Tag.create(
  name: "Ropa"
)
Tag.create(
  name: "Arte"
)
