class ActionCorreo < ApplicationMailer
  default from: "lgurman@outlook.com"

  def enviar_mail(user)
  	mail(to: user, subject: 'bla bla')
  end
end
