class UserMailer < ApplicationMailer
	default from: 'cotizacion@jwseguros.com'

	def welcome_email(client, car)
		@client = client
		@car = car
		@url = 'wwww.jwseguros.com'
		mail(	to: @client.email,
					cco: 'jwoolford@jwseguros.com', 
					from: 'cotizacion@jwseguros.com', 
					subject: 'Cotización de póliza - JW Seguros'
					)
	end
end
