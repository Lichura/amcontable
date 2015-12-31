$(document).ready(function(){
			
			$('a[href^="#"]').on('click',function (e) {
		    	e.preventDefault();

		    	var target = this.hash;
		    	var $target = $(target);

		    	$('html, body').stop().animate({
		        	'scrollTop': $target.offset().top - 100
		    	}, 900, 'swing', function () {
		        	window.location.hash = target;
		    	});
			});

			// Para cada tipo de servicio, cargo en htmls aparte lo que se va a mostrar
			$("#servicios-auditoria").mouseover(function(){
				$("#servicios-impuestos").load("div1_p.html")
				$("#servicios-consulting").load("div1_ul.html")
			}).mouseleave(function(){
				$("#servicios-impuestos").load("impuestos.html");
				$("#servicios-consulting").load("consulting.html");
			});


			$("#servicios-impuestos").mouseenter(function(){
				$("#servicios-auditoria").load("div2_p.html");
				$("#servicios-consulting").load("div2_ul.html");
			}).mouseleave(function(){
				$("#servicios-auditoria").load("auditoria.html");
				$("#servicios-consulting").load("consulting.html");
			});


			$("#servicios-consulting").mouseenter(function(){
				$("#servicios-auditoria").load("div3_p.html");
				$("#servicios-impuestos").load("div3_ul.html");
			}).mouseleave(function(){
				$("#servicios-impuestos").load("impuestos.html");
				$("#servicios-auditoria").load("auditoria.html");
			});


			// Animacion para bajar o subir el nav segun donde se encuentre el scroll de la pagina
			$(window).scroll(function(){
				if ($(window).scrollTop() > 100){
					$("nav").addClass('scrolled');
				}
				
				if ($(window).scrollTop() < 100){
					$("nav").removeClass('scrolled');
				}
			});


			// Animacion al hacer click en un vinculo
			$('nav').click(function(){
				$('body').scrollTo('#home');
			});
			
		});
