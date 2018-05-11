Chef.create!(
  chefname: "samoht",
  email: "samoht@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef one"

1.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.last.id
  )
end

puts "1 recipe posts created for chef one"


Chef.create!(
  chefname: "homas",
  email: "homas@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef two"

2.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", chef_id: Chef.last.id
  )
end

puts "2 recipe posts created for chef two"

1.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.first.id
  )
end

puts "1 recipe posts created for chef one"

Chef.create!(
  chefname: "omas",
  email: "omas@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef three"

3.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.last.id
  )
end

puts "3 recipe posts created for chef three"

2.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.first.id
  )
end

puts "2 recipe posts created for chef one"

Chef.create!(
  chefname: "mas",
  email: "mas@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef four"

2.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ", chef_id: Chef.last.id
  )
end

puts "2 recipe posts created for chef four"

Chef.create!(
  chefname: "sam",
  email: "sam@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef five"

1.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", chef_id: Chef.last.id
  )
end

puts "1 recipe posts created for chef five"

1.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.first.id
  )
end

puts "1 recipe posts created for chef one"

Chef.create!(
  chefname: "mams",
  email: "mams@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef six"

2.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", chef_id: Chef.last.id
  )
end

puts "2 recipe posts created for chef six"

Chef.create!(
  chefname: "altoms",
  email: "altoms@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef seven"

1.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", chef_id: Chef.last.id
  )
end

puts "1 recipe posts created for chef seven"

Chef.create!(
  chefname: "maselle",
  email: "maselle@example.com",
  password: "password",
  password_confirmation: "password"
)

puts "1 reg chef eight"

3.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", chef_id: Chef.last.id
  )
end

puts "3 recipe posts created for chef eight"
