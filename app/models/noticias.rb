#require 'HTTParty'

class Noticias
	include HTTParty

	#xml de la afip
	base_uri 'http://www.afip.gov.ar/home'
	format :xml

	#voy a la ruta de xml y le indico que tiene que traerme todos los items de las noticias
	def self.nuevas_noticias_afip()
		get("/xml/noticias.xml")["noticias"]["item"]
	end

end

