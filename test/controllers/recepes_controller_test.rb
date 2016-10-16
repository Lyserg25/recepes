require 'test_helper'

class RecepesControllerTest < ActionController::TestCase
  setup do
    @recepe = recepes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recepes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recepe" do
    assert_difference('Recepe.count') do
      post :create, recepe: { category: @recepe.category, difficulty: @recepe.difficulty, duration: @recepe.duration, ingredients: @recepe.ingredients, people: @recepe.people, preparation: @recepe.preparation, rating: @recepe.rating, tag: @recepe.tag, title: @recepe.title }
    end

    assert_redirected_to recepe_path(assigns(:recepe))
  end

  test "should show recepe" do
    get :show, id: @recepe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recepe
    assert_response :success
  end

  test "should update recepe" do
    patch :update, id: @recepe, recepe: { category: @recepe.category, difficulty: @recepe.difficulty, duration: @recepe.duration, ingredients: @recepe.ingredients, people: @recepe.people, preparation: @recepe.preparation, rating: @recepe.rating, tag: @recepe.tag, title: @recepe.title }
    assert_redirected_to recepe_path(assigns(:recepe))
  end

  test "should destroy recepe" do
    assert_difference('Recepe.count', -1) do
      delete :destroy, id: @recepe
    end

    assert_redirected_to recepes_path
  end
end
