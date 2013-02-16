require 'test_helper'

class BiketoursControllerTest < ActionController::TestCase
  setup do
    @biketour = biketours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biketours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biketour" do
    assert_difference('Biketour.count') do
      post :create, biketour: { bike: @biketour.bike, birth: @biketour.birth, cpf: @biketour.cpf, name: @biketour.name }
    end

    assert_redirected_to biketour_path(assigns(:biketour))
  end

  test "should show biketour" do
    get :show, id: @biketour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biketour
    assert_response :success
  end

  test "should update biketour" do
    put :update, id: @biketour, biketour: { bike: @biketour.bike, birth: @biketour.birth, cpf: @biketour.cpf, name: @biketour.name }
    assert_redirected_to biketour_path(assigns(:biketour))
  end

  test "should destroy biketour" do
    assert_difference('Biketour.count', -1) do
      delete :destroy, id: @biketour
    end

    assert_redirected_to biketours_path
  end
end
