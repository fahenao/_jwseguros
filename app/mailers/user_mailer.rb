class UserMailer < ApplicationMailer
	
	self.default :from => 'cotizacion@jwseguros.com'

	def welcome_email(user)
		@client = Client.last
		@url = 'http://www.jwseguros.com/'
		mail(to: @client.email, subject: 'JW Seguros - Cotización')
	end
end
