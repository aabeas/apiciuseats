Chef.create!(
  chefname: "thomas",
  email: "thomas@example.com"
)

puts "1 reg chef one"

3.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.last.id
  )
end

puts "3 recipe posts created for chef one"

Chef.create!(
  chefname: "homas",
  email: "homas@example.com"
)

puts "1 reg chef two"

3.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.last.id
  )
end

puts "3 recipe posts created for chef two"

Chef.create!(
  chefname: "omas",
  email: "omas@example.com"
)

puts "1 reg chef three"

3.times do |recipe|
  Recipe.create!(
    name: "My Recipe Post #{recipe}",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", chef_id: Chef.last.id
  )
end

puts "3 recipe posts created for chef three"
