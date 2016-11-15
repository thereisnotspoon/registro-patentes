require 'test_helper'

class PatentePersonasControllerTest < ActionController::TestCase
  setup do
    @patente_persona = patente_personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patente_personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patente_persona" do
    assert_difference('PatentePersona.count') do
      post :create, patente_persona: {  }
    end

    assert_redirected_to patente_persona_path(assigns(:patente_persona))
  end

  test "should show patente_persona" do
    get :show, id: @patente_persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patente_persona
    assert_response :success
  end

  test "should update patente_persona" do
    patch :update, id: @patente_persona, patente_persona: {  }
    assert_redirected_to patente_persona_path(assigns(:patente_persona))
  end

  test "should destroy patente_persona" do
    assert_difference('PatentePersona.count', -1) do
      delete :destroy, id: @patente_persona
    end

    assert_redirected_to patente_personas_path
  end
end
