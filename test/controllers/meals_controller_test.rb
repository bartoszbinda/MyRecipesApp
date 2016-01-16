 require 'test_helper'

class MealsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
   setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  

  test "should show meal" do
    get :show, id: @meal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal
    assert_response :success
  end


end
