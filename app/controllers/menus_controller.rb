class Empresa < ActiveRecord::Base
end 

class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admi! 

  # GET /menus
  # GET /menus.json
  def index
    @titulo = "Restaurante Dragon Ball"
    @empresa = Empresa.find(1)
    @menus = Menu.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
    @empresa = Empresa.find(1)
  end

  # GET /menus/new
  def new
    @titulo = "Restaurante Dragon Ball"
    @empresa = Empresa.find(1)
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
    @empresa = Empresa.find(1)
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu ha sido creado.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu ha sido actualizado.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:codigo, :nombre_menu, :tipo_menu)
    end
end
