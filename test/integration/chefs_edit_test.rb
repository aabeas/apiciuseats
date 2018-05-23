require 'test_helper'

class ChefsEditTest < ActionDispatch::IntegrationTest
  def setup
    @chef = Chef.create!(chefname: "omas", email: "omas@example.com",
                    password: "password", password_confirmation: "password")
    @chef2 = Chef.create!(chefname: "homas", email: "homas@example.com",
                    password: "password", password_confirmation: "password")
    @admin_user = Chef.create!(chefname: "homasa", email: "homasa@example.com",
                    password: "password", password_confirmation: "password", admin: true)
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

  test "accept edit attempt by admin user" do
    sign_in_as(@admin_user, "password")
    get edit_chef_path(@chef)
    assert_template 'chefs/edit'
    patch chef_path(@chef), params: { chef: { chefname: "omas2", email: "omas2@example.com" } }
    assert_redirected_to @chef
    assert_not flash.empty?
    @chef.reload
    assert_match "omas2", @chef.chefname
    assert_match "omas2@example.com", @chef.email
  end

  test "redirect edit attempt by another non-admin user" do
    sign_in_as(@chef2, "password")
    updated_name = "dumas"
    updated_email = "dumas@example.com"
    patch chef_path(@chef), params: { chef: { chefname: updated_name, email: updated_email } }
    assert_redirected_to chefs_path
    assert_not flash.empty?
    @chef.reload
    assert_match "omas", @chef.chefname
    assert_match "omas@example.com", @chef.email
  end
end
