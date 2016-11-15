require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post :create, persona: { apellidos: @persona.apellidos, codigo: @persona.codigo, codigo_postal: @persona.codigo_postal, direccion: @persona.direccion, documeto_de_dentificaion: @persona.documeto_de_dentificaion, faxes: @persona.faxes, fecha_de_defuncion: @persona.fecha_de_defuncion, fecha_de_nacimiento: @persona.fecha_de_nacimiento, lugar: @persona.lugar, nombres: @persona.nombres, numero_de_documento: @persona.numero_de_documento, pais_de_origen: @persona.pais_de_origen, pais_de_residencia: @persona.pais_de_residencia, persona_natural: @persona.persona_natural, residente_en_ecuador: @persona.residente_en_ecuador, telefonos: @persona.telefonos }
    end

    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should show persona" do
    get :show, id: @persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona
    assert_response :success
  end

  test "should update persona" do
    patch :update, id: @persona, persona: { apellidos: @persona.apellidos, codigo: @persona.codigo, codigo_postal: @persona.codigo_postal, direccion: @persona.direccion, documeto_de_dentificaion: @persona.documeto_de_dentificaion, faxes: @persona.faxes, fecha_de_defuncion: @persona.fecha_de_defuncion, fecha_de_nacimiento: @persona.fecha_de_nacimiento, lugar: @persona.lugar, nombres: @persona.nombres, numero_de_documento: @persona.numero_de_documento, pais_de_origen: @persona.pais_de_origen, pais_de_residencia: @persona.pais_de_residencia, persona_natural: @persona.persona_natural, residente_en_ecuador: @persona.residente_en_ecuador, telefonos: @persona.telefonos }
    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete :destroy, id: @persona
    end

    assert_redirected_to personas_path
  end
end
