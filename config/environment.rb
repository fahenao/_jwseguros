# Load the Rails application.
require 'mail'
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

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

mail = Mail.deliver do
		@url = 'www.jwseguros.com'
	  to      Client.last.email
	  from    'JW Seguros <cotizacion@jwseguros.com>'
	  subject 'Cotizacion de su poliza - JW Seguros'

	  text_part do
	    body 'Hola, <%= Client.last.fullname %>
						===============================================
						Gracias por confiar en nosotros, <%= Client.last.fullname %>
						 
						En breves momentos lo estaremos contactando.
						    
						Si desea cotizar otro tipo de poliza puede haga click en el siguiente link: <%= @url %>.'
	  end

	  html_part do
	    content_type 'text/html; charset=UTF-8'
	    body 				'<h1>Gracias por confiar en nosotros, <%= Client.last.fullname %></h1>
	      		      <p>
	      		        En breves momentos lo estaremos contactando.<br>
	      		      </p>
	      		      <p>
	      		        Si desea cotizar otro tipo de poliza puede haga click en el siguiente link: <%= @url %>.
	      		      </p>'
	  end
	end
