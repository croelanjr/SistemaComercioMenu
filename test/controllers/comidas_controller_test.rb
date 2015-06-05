require 'test_helper'

class ComidasControllerTest < ActionController::TestCase
  setup do
    @comida = comidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comida" do
    assert_difference('Comida.count') do
      post :create, comida: { cantidad: @comida.cantidad, ciudad_id: @comida.ciudad_id, codigo: @comida.codigo, dia: @comida.dia, fecha: @comida.fecha, local_id: @comida.local_id, menu: @comida.menu, precio: @comida.precio, tipo: @comida.tipo }
    end

    assert_redirected_to comida_path(assigns(:comida))
  end

  test "should show comida" do
    get :show, id: @comida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comida
    assert_response :success
  end

  test "should update comida" do
    patch :update, id: @comida, comida: { cantidad: @comida.cantidad, ciudad_id: @comida.ciudad_id, codigo: @comida.codigo, dia: @comida.dia, fecha: @comida.fecha, local_id: @comida.local_id, menu: @comida.menu, precio: @comida.precio, tipo: @comida.tipo }
    assert_redirected_to comida_path(assigns(:comida))
  end

  test "should destroy comida" do
    assert_difference('Comida.count', -1) do
      delete :destroy, id: @comida
    end

    assert_redirected_to comidas_path
  end
end
