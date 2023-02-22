# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.create([
  { name: '道案内' },
  { name: '日常会話' },
  { name: '会話に困る' }
])

Tag2.create([
  { name: '英語' },
  { name: 'スペイン語' },
  { name: 'フランス語' },
  { name: '中国語' },
  { name: '韓国語' }
])