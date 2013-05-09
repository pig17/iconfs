require 'test_helper'

class PisControllerTest < ActionController::TestCase
  setup do
    @pi = pis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pi" do
    assert_difference('Pi.count') do
      post :create, pi: { address: @pi.address, contact: @pi.contact, coordX: @pi.coordX, coordY: @pi.coordY, description: @pi.description, name: @pi.name, type: @pi.type }
    end

    assert_redirected_to pi_path(assigns(:pi))
  end

  test "should show pi" do
    get :show, id: @pi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pi
    assert_response :success
  end

  test "should update pi" do
    put :update, id: @pi, pi: { address: @pi.address, contact: @pi.contact, coordX: @pi.coordX, coordY: @pi.coordY, description: @pi.description, name: @pi.name, type: @pi.type }
    assert_redirected_to pi_path(assigns(:pi))
  end

  test "should destroy pi" do
    assert_difference('Pi.count', -1) do
      delete :destroy, id: @pi
    end

    assert_redirected_to pis_path
  end
end
