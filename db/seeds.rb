# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |num|
  User.create!(
    email: "user#{num + 1}@sample.com",
    password: "password",
    sex:  [1, 2, 9, 0].sample,
    nickname: (0...8).map{ (65 + rand(26)).chr }.join,
    residence: Random.rand(1..47),
    birthday: "#{Random.rand(1960..2002)}-#{Random.rand(1..12)}-#{Random.rand(1..28)}",
    purpose: Random.rand(0..2),
    annual_income: Random.rand(0..12),
    occupation: Random.rand(0..54),
    height: Random.rand(0..15),
    academic_history: Random.rand(0..4),
    first_dating_spend_cost: Random.rand(0..4),
    period_until_dating: Random.rand(0..2),
    marriage_history: Random.rand(0..2),
    have_child: Random.rand(0..2),
    main_image: "20200324-020031123_4s7gt.jpg"
  )
end
