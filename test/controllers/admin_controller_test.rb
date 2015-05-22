require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get clientes" do
    get :clientes
    assert_response :success
  end

  test "should get usuarios" do
    get :usuarios
    assert_response :success
  end

  test "should get menus" do
    get :menus
    assert_response :success
  end

end
