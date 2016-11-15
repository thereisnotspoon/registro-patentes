class PersonasController < ApplicationController
  before_action :set_persona, only: [:show, :edit, :update, :destroy]

  def new_solicitante
    
  end
  
  # GET /personas
  # GET /personas.json
  def index
    @personas = Persona.all
    @persona = Persona.new
  end

  # GET /personas/1
  # GET /personas/1.json
 def show
 end

  # GET /personas/new
  def new
    @persona = Persona.new
  end

  # GET /personas/1/edit
  def edit
  end

  # POST /personas
  # POST /personas.json
  def create
    print "----------------------------------------------------------------------------------"
    print "#{params}\n"
    print "----------------------------------------------------------------------------------"
    @persona = Persona.new(persona_params)

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
  end

  # PATCH/PUT /personas/1
  # PATCH/PUT /personas/1.json
  def update
    respond_to do |format|
      if @persona.update(persona_params)
        format.html { redirect_to @persona, notice: 'Persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @persona }
      else
        format.html { render :edit }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personas/1
  # DELETE /personas/1.json
  def destroy
    @persona.destroy
    respond_to do |format|
      format.html { redirect_to personas_url, notice: 'Persona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona
      @persona = Persona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persona_params
      params.require(:persona).permit(:apellidos, :nombres, :pais_de_origen, :documeto_de_dentificaion, :numero_de_documento, :fecha_de_nacimiento, :fecha_de_defuncion, :pais_de_residencia, :lugar, :direccion, :telefonos, :faxes, :codigo_postal, :persona_natural, :residente_en_ecuador, :codigo)
    end
end
