class Empresa < ActiveRecord::Base
  end

class HomeController < ApplicationController
  before_action :set_correo, only: [:show]

  def index
    @titulo = "Restaurante Dragon Ball"
    @empresa = Empresa.find(1)
  end

  def menus
    @titulo = "Menus"
    @empresa = Empresa.find(1)
  end

  def promociones
    @titulo = "Promociones"
    @empresa = Empresa.find(1)
  end

  def locales
    @titulo = "Locales"
    @empresa = Empresa.find(1)
  end

  def contactenos
    @titulo = "Contactenos"
    @empresa = Empresa.find(1)

    if request.post?
      begin
         if Email.micorreo(params).deliver and Email.enviar(params).deliver
          flash.now[:noticia] = "Enviado Correctamente"
          redirect_to root_path 
         end

       rescue
          flash.now[:error] = "No se ha enviado"
       end
    end

   #Email.recepcion.deliver
  end

  def about
    @titulo = "About"
    @empresa = Empresa.find(1)
  end
end
