class HomeController < ApplicationController
  def index
  	@time = Time.now
  	@noticias = Noticias.nuevas_noticias_afip()
    @personas = Persona.all
    @servicios = Servicio.all
  end   

  def create
    @consulta = Users.new(params[:consulta])
    if @consulta.valid?
      enviar_correo(@consulta)
      Mensaje.create(:nombre => @consulta.name, :mail => @consulta.mail, :telefono => @consulta.telefono, :consulta => @consulta.consulta, :leido => false)
      redirect_to root_url, notice: "Muchas gracias por comunicarte con mb-contadores"
    else
      flash[:alert] = "Por favor completa todos los campos"
      redirect_to root_url
    end
  end

  def enviar_correo(user)
    ActionCorreo.enviar_mail(user).deliver_now
  end

  helper_method :new
end
