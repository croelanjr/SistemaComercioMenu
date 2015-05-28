require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get menus" do
    get :menus
    assert_response :success
  end

  test "should get promociones" do
    get :promociones
    assert_response :success
  end

  test "should get locales" do
    get :locales
    assert_response :success
  end

  test "should get contactenos" do
    get :contactenos
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
