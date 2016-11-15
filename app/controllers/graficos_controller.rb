class GraficosController < ApplicationController
  before_action :set_grafico, only: [:show, :edit, :update, :destroy]

  # GET /graficos
  # GET /graficos.json
  def index
    @graficos = Grafico.all
  end

  # GET /graficos/1
  # GET /graficos/1.json
  def show
  end

  # GET /graficos/new
  def new
    @grafico = Grafico.new
  end

  # GET /graficos/1/edit
  def edit
  end

  # POST /graficos
  # POST /graficos.json
  def create
    @grafico = Grafico.new(grafico_params)

    respond_to do |format|
      if @grafico.save
        format.html { redirect_to @grafico, notice: 'Grafico was successfully created.' }
        format.json { render :show, status: :created, location: @grafico }
      else
        format.html { render :new }
        format.json { render json: @grafico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graficos/1
  # PATCH/PUT /graficos/1.json
  def update
    respond_to do |format|
      if @grafico.update(grafico_params)
        format.html { redirect_to @grafico, notice: 'Grafico was successfully updated.' }
        format.json { render :show, status: :ok, location: @grafico }
      else
        format.html { render :edit }
        format.json { render json: @grafico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graficos/1
  # DELETE /graficos/1.json
  def destroy
    @grafico.destroy
    respond_to do |format|
      format.html { redirect_to graficos_url, notice: 'Grafico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grafico
      @grafico = Grafico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grafico_params
      params.require(:grafico).permit(:grafico)
    end
end
