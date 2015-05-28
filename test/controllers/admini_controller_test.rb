require 'test_helper'

class AdminiControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get menus" do
    get :menus
    assert_response :success
  end

  test "should get clientes" do
    get :clientes
    assert_response :success
  end

  test "should get administradores" do
    get :administradores
    assert_response :success
  end

  test "should get pedidos" do
    get :pedidos
    assert_response :success
  end

  test "should get comidas_semanales" do
    get :comidas_semanales
    assert_response :success
  end

end
