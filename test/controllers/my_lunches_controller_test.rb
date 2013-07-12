require 'test_helper'

class MyLunchesControllerTest < ActionController::TestCase
  setup do
    @my_lunch = my_lunches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_lunches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_lunch" do
    assert_difference('MyLunch.count') do
      post :create, my_lunch: { bu: @my_lunch.bu, cost: @my_lunch.cost, meal: @my_lunch.meal }
    end

    assert_redirected_to my_lunch_path(assigns(:my_lunch))
  end

  test "should show my_lunch" do
    get :show, id: @my_lunch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_lunch
    assert_response :success
  end

  test "should update my_lunch" do
    patch :update, id: @my_lunch, my_lunch: { bu: @my_lunch.bu, cost: @my_lunch.cost, meal: @my_lunch.meal }
    assert_redirected_to my_lunch_path(assigns(:my_lunch))
  end

  test "should destroy my_lunch" do
    assert_difference('MyLunch.count', -1) do
      delete :destroy, id: @my_lunch
    end

    assert_redirected_to my_lunches_path
  end
end
