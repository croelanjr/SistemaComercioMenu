#after do
#  ActiveRecord::Base.connection.close
#end

#helpers ActionView::Helpers::FormTagHelper

class Empresa < ActiveRecord::Base
end 

class AdminiController < ApplicationController

  def index
    @titulo = "Restaurante Dragon Ball"
    @empresa = Empresa.find(1)
  end

  def menus
  end

  def clientes
  end

  def administradores
  end

  def pedidos
  end

  def comidas_semanales
  end
end
