class PassengerMailer < ApplicationMailer

  def booking_confirmation_email
    @passenger = params[:passenger]
    @url = "http://example.com/login"
    mail(to: @passenger.email, subject: "Welcome to my awesome site")
  end

end
