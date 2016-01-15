class ActionCorreo < ApplicationMailer
  default from: "mbcontable@zoho.com"

  def enviar_mail(user)
  	@user = user
  	mail(to: @user.mail, subject: 'MB-Contable')
  end
end
