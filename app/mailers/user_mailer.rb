class UserMailer < ApplicationMailer
	require 'mail'

	Mail.defaults do
	  delivery_method :smtp, {
	    :address => 'smtp.sendgrid.net',
	    :port => '587',
	    :domain => 'heroku.com',
	    :user_name => ENV['SENDGRID_USERNAME'],
	    :password => ENV['SENDGRID_PASSWORD'],
	    :authentication => :plain,
	    :enable_starttls_auto => true
	  }
	end

	Mail.deliver do
		@client = Client.last
	  to @client.email
	  from 'cotizacion@jwseguros'
	  subject 'JW Seguros - Cotización'
	end
	
	self.default :from => 'cotizacion@jwseguros.com'

	def welcome_email(user)
		@client = Client.last
		@url = 'http://www.jwseguros.com/'
		mail(to: @client.email, subject: 'JW Seguros - Cotización')
	end
end
