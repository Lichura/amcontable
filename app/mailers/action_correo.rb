class ActionCorreo < ApplicationMailer
  default from: "mbcontable@zoho.com"

  def enviar_mail(user)
  	mail(to: user, subject: 'bla bla')
  end
end
