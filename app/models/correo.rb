class Correo < MailForm::Base
	attribute :nombre,  :validate => true
	attribute :email,  :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :asunto
	attribute :mensaje

	def headers
    {
      :subject => "Referencia: #{asunto}",
      :to => "croelanjr@gmail.com",
      :to => "#{email}",
      :from => %("#{nombre}" <#{email}>)
    }
  end
end