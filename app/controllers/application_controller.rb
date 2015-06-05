class Empresa < ActiveRecord::Base
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  	def application
  		@empresa = Empresa.find(1)
	end
#  def hello
#  	render text: "Hola Mundo"
#  end
end
