require 'test_helper'

class GraficosControllerTest < ActionController::TestCase
  setup do
    @grafico = graficos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graficos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grafico" do
    assert_difference('Grafico.count') do
      post :create, grafico: { ruta: @grafico.ruta }
    end

    assert_redirected_to grafico_path(assigns(:grafico))
  end

  test "should show grafico" do
    get :show, id: @grafico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grafico
    assert_response :success
  end

  test "should update grafico" do
    patch :update, id: @grafico, grafico: { ruta: @grafico.ruta }
    assert_redirected_to grafico_path(assigns(:grafico))
  end

  test "should destroy grafico" do
    assert_difference('Grafico.count', -1) do
      delete :destroy, id: @grafico
    end

    assert_redirected_to graficos_path
  end
end
