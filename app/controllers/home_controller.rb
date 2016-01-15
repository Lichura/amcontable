class HomeController < ApplicationController
  def index
  	@time = Time.now
  	@noticias = Noticias.nuevas_noticias_afip()
  end   

  def create
    @consulta = Users.new(params[:consulta])
    if @consulta.valid?
      enviar_correo(@consulta)
      redirect_to root_url, notice: "Muchas gracias por comunicarte con mb-contadores"
    else
      flash[:alert] = "Ha ocurrido un error con tu solicitud, por favor completa todos los campos"
      redirect_to root_url
    end
  end

  def enviar_correo(user)
    ActionCorreo.enviar_mail(user).deliver_now
  end

  helper_method :new
end
