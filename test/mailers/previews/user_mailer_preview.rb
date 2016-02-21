class UserMailerPreview < ActionMailer::Preview
  def car_policy_email
    UserMailer.car_policy_email(Client.first, Car.first)
  end
end