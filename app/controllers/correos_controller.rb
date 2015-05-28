class CorreosController < ApplicationController
  before_action :set_correo, only: [:show, :edit, :update, :destroy]

  # GET /correos
  # GET /correos.json
  def index
    @correos = Correo.all
  end

  # GET /correos/1
  # GET /correos/1.json
  def show
  end

  # GET /correos/new
  def new
    @correo = Correo.new
  end

  # GET /correos/1/edit
  def edit
  end

  # POST /correos
  # POST /correos.json
  def create
    @correo = Correo.new(correo_params)

    respond_to do |format|
      if @correo.save
        format.html { redirect_to @correo, notice: 'Correo was successfully created.' }
        format.json { render :show, status: :created, location: @correo }
      else
        format.html { render :new }
        format.json { render json: @correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /correos/1
  # PATCH/PUT /correos/1.json
  def update
    respond_to do |format|
      if @correo.update(correo_params)
        format.html { redirect_to @correo, notice: 'Correo was successfully updated.' }
        format.json { render :show, status: :ok, location: @correo }
      else
        format.html { render :edit }
        format.json { render json: @correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correos/1
  # DELETE /correos/1.json
  def destroy
    @correo.destroy
    respond_to do |format|
      format.html { redirect_to correos_url, notice: 'Correo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correo
      @correo = Correo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def correo_params
      params.require(:correo).permit(:nombre, :email, :asunto, :mensaje)
    end
end
