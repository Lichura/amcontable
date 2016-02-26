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

			/*function servicios(servicio, servicio1, texto){
				servicio.mouseover(function(){
					servicio1.addClass('color');
					servicio1.html(texto);
				}).mouseleave(functio(){
					servicio1.addClass('color');
					servicio1.html(texto);
				});
			};*/
			//Declaro las variables para utilizar
			var auditoria_list = $("#Auditoria_list").html();
			var impuestos_list = $("#Impuestos_list").html();
			var consultoria_list = $("#Consulting_list").html();
			var auditoria_desc = $("#Auditoria_desc").html();
			var impuestos_desc = $("#Impuestos_desc").html();
			var consultoria_desc = $("#Consulting_desc").html();
			var impuestos = $("#servicios-Impuestos").html();
			var auditoria = $("#servicios-Auditoria").html();
			var consultoria = $("#servicios-Consulting").html();

			$("#servicios-Auditoria").mouseover(function(){
				$(".servicios").addClass('color');
				$("#servicios-Impuestos").html(auditoria_desc);
				$("#servicios-Consulting").html(auditoria_list);
			}).mouseleave(function(){
				$(".servicios").removeClass('color');
				$("#servicios-Impuestos").html(impuestos);
				$("#servicios-Consulting").html(consultoria);
			});

			$("#servicios-Impuestos").mouseover(function(){
				$(".servicios").addClass('color');
				$("#servicios-Auditoria").html(impuestos_desc);
				$("#servicios-Consulting").html(impuestos_list);
			}).mouseleave(function(){
				$(".servicios").removeClass('color');
				$("#servicios-Auditoria").html(auditoria);
				$("#servicios-Consulting").html(consultoria);
			});

			$("#servicios-Consulting").mouseover(function(){
				$(".servicios").addClass('color');
				$("#servicios-Auditoria").html(consultoria_desc);
				$("#servicios-Impuestos").html(consultoria_list);
			}).mouseleave(function(){
				$(".servicios").removeClass('color');
				$("#servicios-Auditoria").html(auditoria);
				$("#servicios-Impuestos").html(impuestos);
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
