require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest

  def setup
    @chef = Chef.create!(chefname: "omas", email: "omas@example.com")
    @recipe = Recipe.create(name: "Banana(Unpeeled)-Split", description: "Banana sliced length-wise with a dash of pepper", chef: @chef)
    @recipe2 = @chef.recipes.build(name: "Stiff Chicken", description: "Chicken on a stick")
    @recipe2.save
  end

  test "should get recipes index " do
    get recipes_path
    assert_response :success
  end

  test "should get recipes listing" do
    get recipes_path
    assert_template 'recipes/index'
    assert_match @recipe.name, response.body
    assert_match @recipe2.name, response.body
  end
end
