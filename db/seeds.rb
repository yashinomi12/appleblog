# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#モデルクラス名.create(:カラム名1 => 値1, :カラム名2 => 値2, ...)
Post.create(:title => "title1",:content => "content1")
