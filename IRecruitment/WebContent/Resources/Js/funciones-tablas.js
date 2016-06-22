var $TABLA_VACANTES = $('#tabla_vacantes');
var $PUESTO = $("#Puesto");
var $STATUS = $("#Status");
var $CANDIDATO = $("#Candidato");
var $VACANTE_FORM = $("#Vacante");
var form,dialog;

$(document).ready(function(){
		dialog = $("#dialog_agregar_vacante").dialog({
			autoOpen: false,
			modal: true,
			buttons:[
			{
				text:"Cancelar",
				click: function(){
					$(this).dialog("close");
				}
			}],
			close: function(){
				form[0].reset();
			}
		});
		$("#button").on("click", function(){
			$("#dialog_agregar_vacante").dialog("open");
		});
		form = dialog.find("form").on("submit", function(event){
			event.preventDefault();
			addUser();	
		});
	function addUser(){
		var vacante = new Object();
		vacante.id = "";
		vacante.puesto = $PUESTO.val();
		vacante.status = $STATUS.val();
		vacante.candidatos = $CANDIDATO.val();
		vacante.vacantes = $VACANTE_FORM.val();


		$.ajax({
			url:"AgregarVacantes",
			type:'POST',
			dataType:'json',
			data: JSON.stringify(vacante),
			contentType: 'application/json',
			mimeType: 'application/json',

			success: function(data){
				$("#tabla_vacantes > tbody").html("");
				$.each(data, function(index, vacante){
					$("#tabla_vacantes > tbody").append("<tr>");
					$.each(vacante,function(key,val){
							$("#tabla_vacantes > tbody > tr:last ").append(
							"<td>" + val + "</td>");	
							

					})
				})
				
				
			}

		});

		dialog.dialog("close");
	}
	}
	);
