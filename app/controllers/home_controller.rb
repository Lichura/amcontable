class HomeController < ApplicationController
  def index
  	@time = Time.now
  	@noticias = Noticias.nuevas_noticias_afip()
  	@mail = params[:mail]
  	if @mail.present?
  		enviar_correo(@mail)
  	end
  end

  def enviar_correo(mail)
  	ActionCorreo.enviar_mail(mail).deliver_now
  end
end
