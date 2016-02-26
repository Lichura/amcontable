class MenuController < ApplicationController

	def index
		@mensajes = Mensaje.all
		@leidos = Mensaje.where(leido: false).count
		@vista = 'mensajes'
	end

	def mensajes
		@mensajes = Mensaje.all
		respond_to do |format|               
    		format.js
  		end  
	end
	
	def mostrar
		@mensaje = Mensaje.find(params[:id])
		@mensaje.update(:leido => true)
		respond_to do |format|
			format.js
		end
  	end

	def servicios
		@servicios = Servicio.all
		respond_to do |format|
			format.js
		end
	end

	def actualizar_servicio
		@servicio.update(servicio_params)
	end

	def nosotros
		@nosotros = Persona.all
		respond_to do |format|
			format.js
		end
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_mensaje
      @mensaje = Mensaje.find(params[:id])
    end

        # Never trust parameters from the scary internet, only allow the white list through.
    def mensaje_params
      params.require(:mensaje).permit(:nombre, :mail, :telefono, :consulta, :leido)
    end
    def servicio_params
      params.require(:servicio).permit(:nombre, :foto_front, :foto_back, :descripcion)
    end
end
