require 'test_helper'

class AutenticacionsControllerTest < ActionController::TestCase
  setup do
    @autenticacion = autenticacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autenticacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autenticacion" do
    assert_difference('Autenticacion.count') do
      post :create, autenticacion: { crypted_password: @autenticacion.crypted_password, email: @autenticacion.email, user: @autenticacion.user }
    end

    assert_redirected_to autenticacion_path(assigns(:autenticacion))
  end

  test "should show autenticacion" do
    get :show, id: @autenticacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autenticacion
    assert_response :success
  end

  test "should update autenticacion" do
    patch :update, id: @autenticacion, autenticacion: { crypted_password: @autenticacion.crypted_password, email: @autenticacion.email, user: @autenticacion.user }
    assert_redirected_to autenticacion_path(assigns(:autenticacion))
  end

  test "should destroy autenticacion" do
    assert_difference('Autenticacion.count', -1) do
      delete :destroy, id: @autenticacion
    end

    assert_redirected_to autenticacions_path
  end
end
