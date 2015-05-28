require 'test_helper'

class CorreosControllerTest < ActionController::TestCase
  setup do
    @correo = correos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:correos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correo" do
    assert_difference('Correo.count') do
      post :create, correo: { asunto: @correo.asunto, email: @correo.email, mensaje: @correo.mensaje, nombre: @correo.nombre }
    end

    assert_redirected_to correo_path(assigns(:correo))
  end

  test "should show correo" do
    get :show, id: @correo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @correo
    assert_response :success
  end

  test "should update correo" do
    patch :update, id: @correo, correo: { asunto: @correo.asunto, email: @correo.email, mensaje: @correo.mensaje, nombre: @correo.nombre }
    assert_redirected_to correo_path(assigns(:correo))
  end

  test "should destroy correo" do
    assert_difference('Correo.count', -1) do
      delete :destroy, id: @correo
    end

    assert_redirected_to correos_path
  end
end
