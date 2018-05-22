Chef.create!(
  chefname: "samoht",
  email: "samoht@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef one"

Chef.create!(
  chefname: "homas",
  email: "homas@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef two"

Chef.create!(
  chefname: "omas",
  email: "omas@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef three"

Chef.create!(
  chefname: "mas",
  email: "mas@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef four"

1.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.first.id
  )
end

puts "1 recipe posts created for chef one"

2.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", chef_id: Chef.second.id
  )
end

puts "2 recipe posts created for two"

3.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.third.id
  )
end

puts "3 recipe posts created for chef three"

2.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ", chef_id: Chef.last.id
  )
end

puts "2 recipe posts created for chef four"
