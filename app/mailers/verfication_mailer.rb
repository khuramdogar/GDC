class VerficationMailer < ApplicationMailer
  def verify_pin(verification) # will be created in model
    @greeting = "Hi Please enter the below PIN NUMBER"
    @pin = verification.verification_pin
    mail to: verification.user.email, subject: "Verification Mail"
  end

  def reset_pin(verification)
    @greeting = "HI, To reset your password please type in the below code along with new password"
    @pin = verification.verification_pin
    mail to: verification.user.email, subject: "Reset Password"
  end
end
