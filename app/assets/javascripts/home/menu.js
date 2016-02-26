
$(document).ready(function(){
	$('#boton-mensajes').click(function(){
		$('#contenedor-principal').html("<%= escape_javascript(render :partial => 'mensajes') %>");
	});
	});