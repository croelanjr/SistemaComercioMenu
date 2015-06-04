class Empresa < ActiveRecord::Base
end 

class AdminiController < ApplicationController
  before_action :authenticate_admi! 

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
