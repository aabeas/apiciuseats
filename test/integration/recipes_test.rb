require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest

  def setup
    @chef = Chef.create!(chefname: "omas", email: "omas@example.com")
    @recipe = Recipe.create(name: "Banana-Split", description: "Banana sliced length-wise with a dash of pepper", chef: @chef)
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
    # assert_match @recipe.name, response.body
    assert_select "a[href=?]",recipe_path(@recipe), text: @recipe.name
    # assert_match @recipe2.name, response.body
    assert_select "a[href=?]",recipe_path(@recipe2), text: @recipe2.name
  end

  test "should get recipes show" do
    get recipe_path(@recipe)
    assert_template 'recipes/show'
    assert_match @recipe.name.capitalize, response.body
    assert_match @recipe.description, response.body
    assert_match @chef.chefname, response.body
  end
end
