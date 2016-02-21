require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "car_policy_email" do
  	#Send the email, then test that it got queued
  	email = UserMailer.car_policy_email('fhenaop@gmail.com', @car, Time.now).deliver_now
    assert_not ActionMailer::Base.deliveries.empty?

    #Test the body of the sent email contains what we expect it to
    assert_equal ['cotizacion@jwseguros.com'], email.from
    assert_equal ['fhenaop@gmail.com'], email.to
    assert_equal ['jwoolford@jwseguros.com'], email.bcc
    assert_equal 'Cotización de seguro de autómovil - JW Seguros', email.subject
    assert_equal read_fixture('car_policy_email').join, email.body.to_s
  end
end