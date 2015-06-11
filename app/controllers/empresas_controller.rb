

class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admi! 

  # GET /empresas
  # GET /empresas.json
  def index
    @titulo = "Restaurante Dragon Ball"
    @empresa = Empresa.find(1)
    @empresas = Empresa.all
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
    @empresa = Empresa.find(1)
  end

  # GET /empresas/new
  def new
    @titulo = "Restaurante Dragon Ball"
    @empresa = Empresa.find(1)
    @empresas = Empresa.new
  end

  # GET /empresas/1/edit
  def edit
    @empresa = Empresa.find(1)
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresas = Empresa.new(empresa_params)

    respond_to do |format|
      if @empresas.save
        format.html { redirect_to @empresas, notice: 'Empresa was successfully created.' }
        format.json { render :show, status: :created, location: @empresas }
      else
        format.html { render :new }
        format.json { render json: @empresas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    respond_to do |format|
      if @empresas.update(empresa_params)
        #File.extname(params[:logo].path)
        format.html { redirect_to @empresas, notice: 'Empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresas }
      else
        format.html { render :edit }
        format.json { render json: @empresas.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresas = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:name, :ruc, :direccion, :telefono, :moneda, :igv, :about_1, :about_2, :logo)
    end
end
