class UserMailer < ApplicationMailer
		default from: 'cotizacion@jwseguros.com'

		def welcome_email(user)
			@client = Client.last
			@url = 'wwww.jwseguros.com'
			mail(to: @client.email, from: 'cotizacion@jwseguros.com', subject: 'Cotizacion de poliza - JW Seguros')
		end
end
