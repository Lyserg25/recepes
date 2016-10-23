require 'test_helper'

class IngredientsEntriesControllerTest < ActionController::TestCase
  setup do
    @ingredients_entry = ingredients_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredients_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredients_entry" do
    assert_difference('IngredientsEntry.count') do
      post :create, ingredients_entry: { ingredient: @ingredients_entry.ingredient, recepe_id: @ingredients_entry.recepe_id }
    end

    assert_redirected_to ingredients_entry_path(assigns(:ingredients_entry))
  end

  test "should show ingredients_entry" do
    get :show, id: @ingredients_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredients_entry
    assert_response :success
  end

  test "should update ingredients_entry" do
    patch :update, id: @ingredients_entry, ingredients_entry: { ingredient: @ingredients_entry.ingredient, recepe_id: @ingredients_entry.recepe_id }
    assert_redirected_to ingredients_entry_path(assigns(:ingredients_entry))
  end

  test "should destroy ingredients_entry" do
    assert_difference('IngredientsEntry.count', -1) do
      delete :destroy, id: @ingredients_entry
    end

    assert_redirected_to ingredients_entries_path
  end
end
