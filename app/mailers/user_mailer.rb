class UserMailer < ApplicationMailer
	default from: 'cotizacion@jwseguros.com'

	def car_policy_email(client, car)
		@client = client
		@car = car
		@url = 'wwww.jwseguros.com'
		mail(	to: @client.email,
					cco: 'jwoolford@jwseguros.com', 
					from: 'cotizacion@jwseguros.com', 
					subject: 'Cotización de seguro de automovil - JW Seguros'
					)
	end

	def content_policy_email(client, content)
			@client = client
			@content = content
			@url = 'wwww.jwseguros.com'
			mail(	to: @client.email,
						cco: 'jwoolford@jwseguros.com', 
						from: 'cotizacion@jwseguros.com', 
						subject: 'Cotización de seguro de contenido - JW Seguros'
						)
		end

		def fire_policy_email(client, fire)
			@client = client
			@fire = fire
			@url = 'wwww.jwseguros.com'
			mail(	to: @client.email,
						cco: 'jwoolford@jwseguros.com', 
						from: 'cotizacion@jwseguros.com', 
						subject: 'Cotización de seguro contra incendios - JW Seguros'
						)
		end

		def health_policy_email(client, health)
			@client = client
			@health = health
			@url = 'wwww.jwseguros.com'
			mail(	to: @client.email,
						cco: 'jwoolford@jwseguros.com', 
						from: 'cotizacion@jwseguros.com', 
						subject: 'Cotización de seguro de salud - JW Seguros'
						)
		end

		def life_policy_email(client, life)
			@client = client
			@life = life
			@url = 'wwww.jwseguros.com'
			mail(	to: @client.email,
						cco: 'jwoolford@jwseguros.com', 
						from: 'cotizacion@jwseguros.com', 
						subject: 'Cotización de seguro de vida - JW Seguros'
						)
		end

		def surety_policy_email(client, surety)
			@client = client
			@surety = surety
			@url = 'wwww.jwseguros.com'
			mail(	to: @client.email,
						cco: 'jwoolford@jwseguros.com', 
						from: 'cotizacion@jwseguros.com', 
						subject: 'Cotización de seguro de fianza - JW Seguros'
						)
		end
end
