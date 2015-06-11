class Empresa < ActiveRecord::Base
end

class Comida < ActiveRecord::Base
end

class VistaPedidoController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pedido, only: [:destroy]

def index
  @empresa = Empresa.find(1) 
  #@usuario = User.find(params[:id])
  #@usuario = User.find(:user_id)
  #@usuario = User.find(current_user)
  #@pedido = @usuario.pedido.find(params[:user_id])
  #@pedido = Pedido.find(params[:user_id])
  #@pedido = Pedido.where(id: params[:id], user: current_user).take
  #puts @pedido
  @pedidoo = Pedido.all
end  

def new
      #@usuario = User.find(params[:id])
    	@empresa = Empresa.find(1)  
    	@pedidoo = Pedido.new
      #@pedido = @usuario.pedido.build
      tiempo = Time.new
      @dia = tiempo.wday
      if @dia == 0
        @dia_palabra = "Domingo"
      elsif @dia == 1
        @dia_palabra = "Lunes"
      elsif @dia == 2
        @dia_palabra = "Martes"
      elsif @dia == 3
        @dia_palabra = "Miercoles"
      elsif @dia == 4
        @dia_palabra = "Jueves"
      elsif @dia == 5
        @dia_palabra = "Viernes"
      elsif @dia == 6
        @dia_palabra = "Sabado"
      end
      @fecha = tiempo.day
      @local = Local.all
      @arreglo = []
      @local.each do |ll|
      @arreglo << ll.direccion + ' - '  + ll.ciudad
      end

      @comida = Comida.all
      @arreglo_ensalada = []
      @arreglo_segundo = []
      @comida.each do |cc|
        if cc.dia == @fecha.to_s
          if cc.tipo == "Ensalada" or cc.tipo == "Sopa"
            @arreglo_ensalada << cc.menu
          end
        end
      end

      @comida.each do |ss|
        if ss.dia == @fecha.to_s && ss.tipo == "Segundo"
          @arreglo_segundo << ss.menu
        end
      end
	end

	def create
        @usuario = User.find(params[:user_id])
        @pedido = @usuario.pedido.create(pedido_params)
        #@pedidoo = Pedido.new(params[:pedidoo])
      if @pedido.save
		    flash[:notice] = "Menu generado con exito"
        #redirect_to @pedidoo
        redirect_to @usuario
      else
      	render :new
      end
  end

#  def show
#    @empresa = Empresa.find(1)
#  end

#  def edit
#    @empresa = Empresa.find(1)  
#  end

#  def update
#    respond_to do |format|
#      if @pedido.update(pedido_params)
#        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
#        format.json { render :show, status: :ok, location: @pedido }
#      else
#        format.html { render :edit }
#        format.json { render json: @pedido.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  def destroy
    @usuario = User.find(params[:user_id])
    @pedido = @usuario.pedido.find    
    @pedido.destroy
    flash[:notice] = "Menu Eliminado."
    redirect_to vista_pedido_url(@pedido.pedido_id)
  end

  private
    def set_pedido
      #@pedido = Pedido.find(params[:id])
      @pedido = @usuario.pedido.find 
    end

    def pedido_params
      params.permit(:user_id).merge(bidder: current_user)
      #params.require(:pedido).permit(:numero, :fecha, :nombre, :dni, :telefono, :email, :local, :menu, :cantidad, :precio, :delivery_id, :observacion)
    end
end
https://github.com/croelanjr/SistemaComercioMenu.git