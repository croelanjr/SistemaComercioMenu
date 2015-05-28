class Email < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  #def recepcion
  #  @greeting = "Hi"

 #   mail to: "croelanjr@gmail.com", :subject=>"Nuestro primer correo"
 # end

 def micorreo(params)
 	enviar_correo(params,"croelanjr@gmail.com", "Nuevo Mensaje")
 end

 def enviar(params)
 	enviar_correo(params, params[:email], "Gracias por contactar con D.B.")	
 end

 private
 	def enviar_correo(params,email,asunto)
 		@nombre = params[:nombre]
 		@email = params[:email]
 		@asunto = params[:asunto]
 		@mensaje = params[:mensaje]

 		mail:to => email, :subject => "#{params[:asunto]}, #{asunto}"
 	end
end
