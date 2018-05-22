require 'test_helper'

class ChefsEditTest < ActionDispatch::IntegrationTest
  def setup
    @chef = Chef.create!(chefname: "omas", email: "omas@example.com",
                    password: "password", password_confirmation: "password")
  end

  test "reject an invalid edit" do
    sign_in_as(@chef, "password")
    get edit_chef_path(@chef)
    assert_template 'chefs/edit'
    patch chef_path(@chef), params: { chef: { chefname: " ", email: "omas@example.com" } }
    assert_template 'chefs/edit'
    assert_select 'h5.card-title'
    assert_select 'div.card-body'
  end

  test "accept valid edit" do
    sign_in_as(@chef, "password")
    get edit_chef_path(@chef)
    assert_template 'chefs/edit'
    patch chef_path(@chef), params: { chef: { chefname: "omas1", email: "omas1@example.com" } }
    assert_redirected_to @chef
    assert_not flash.empty?
    @chef.reload
    assert_match "omas1", @chef.chefname
    assert_match "omas1@example.com", @chef.email
  end
end
