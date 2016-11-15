class PatentePersonasController < ApplicationController
  before_action :set_patente_persona, only: [:show, :edit, :update, :destroy]

  # POST /patentes_personas_todo
  def create_patentes_personas_todo
    
    
    @persona = Persona.new(persona_params)
    @patente_persona = PatentePersona.new

    print params.permitted?
    #params[:nombres]
    print params[:nombres]
    render :text => params.slice(:apellidos, :nombres, :pais_de_origen, :documeto_de_dentificaion, :numero_de_documento, :fecha_de_nacimiento, :fecha_de_defuncion, :pais_de_residencia, :lugar, :direccion, :telefonos, :faxes, :codigo_postal, :persona_natural, :residente_en_ecuador, :codigo)

    params.each do |p|
      #render :text => p
      print p
      print "\n"
      
    end
=begin
    respond_to do |format|
      if @persona.save
        format.html { redirect_to @persona, notice: 'Persona was successfully created.' }
        format.js {}
        format.json { render :show, status: :created, location: @persona }
      else
        format.html { render :new }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
=end
  end  
  
  def new_patente_personas
    print "\n\n\n\nHELLO\n\n\n\n\n\n"
    @patente_persona = PatentePersona.new
    @persona = Persona.new
    @patente_persona.tipo_persona = params[:tipo_persona]
    @patente_persona.patente_id = params[:patente_id]
  end

  # GET /patente_personas
  # GET /patente_personas.json
  def index
    @patente_personas = PatentePersona.all
  end

  # GET /patente_personas/1
  # GET /patente_personas/1.json
  def show
  end

  # GET /patente_personas/new
  def new
    @patente_persona = PatentePersona.new
  end

  # GET /patente_personas/1/edit
  def edit
  end

  # POST /patente_personas
  # POST /patente_personas.json
  def create
    @patente_persona = PatentePersona.new(patente_persona_params)

    respond_to do |format|
      if @patente_persona.save
        format.html { redirect_to @patente_persona, notice: 'Patente persona was successfully created.' }
        format.json { render :show, status: :created, location: @patente_persona }
      else
        format.html { render :new }
        format.json { render json: @patente_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patente_personas/1
  # PATCH/PUT /patente_personas/1.json
  def update
    respond_to do |format|
      if @patente_persona.update(patente_persona_params)
        format.html { redirect_to @patente_persona, notice: 'Patente persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @patente_persona }
      else
        format.html { render :edit }
        format.json { render json: @patente_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patente_personas/1
  # DELETE /patente_personas/1.json
  def destroy
    @patente_persona.destroy
    respond_to do |format|
      format.html { redirect_to patente_personas_url, notice: 'Patente persona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patente_persona
      @patente_persona = PatentePersona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patente_persona_params
      params.fetch(:patente_persona, {})
    end
    
    def persona_params
      print "----------------------------------------------------------------------------------------------------------------"

      params.permit(:apellidos, :nombres, :pais_de_origen, :documento_de_identificacion, :numero_de_documento, :fecha_de_nacimiento, :fecha_de_defuncion, :pais_de_residencia, :lugar_de_residencia, :direccion, :telefonos, :faxes, :codigo_postal, :persona_natural, :residente_en_ecuador, :codigo, :authenticity_token)
      print "----------------------------------------------------------------------------------------------------------------"
      print params.permitted?
      params.slice(:apellidos, :nombres, :pais_de_origen, :documento_de_identificacion, :numero_de_documento, :fecha_de_nacimiento, :fecha_de_defuncion, :pais_de_residencia, :lugar_de_residencia, :direccion, :telefonos, :faxes, :codigo_postal, :persona_natural, :residente_en_ecuador, :codigo)

    end
   
end
