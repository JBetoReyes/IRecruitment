<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.iRecruitment.modelos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tabla de vacantes</title>

<!-- Bootstrap -->
<link href="Resources/Css/bootstrap.min.css" rel="stylesheet">

<!-- style-table -->
<link href="Resources/Css/style_tables.css" rel="stylesheet">

<!-- jQuery-ui.css -->
<link href="Resources/Css/jquery-ui.theme.css" rel="stylesheet">
<link href="Resources/Css/jquery-ui.css" rel="stylesheet">


</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-offset-2 col-xs-8">
				<div class="panel panel-primary ">
					<div class="panel-heading">Entrevistas pendientes</div>
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<table class="table table-striped table-hover" id="tabla_vacantes">
								<thead>
									<tr>
										<th>#</th>
										<th>Puesto</th>
										<th>Status</th>
										<th># Candidatos</th>
										<th># Vacantes</th>
									</tr>
								</thead>
								<tbody>
									<%
										List<Vacantes> vList = (List<Vacantes>) request.getAttribute("lista_vacantes");

										for (Integer i = 0; i < vList.size(); i++) {
									%>
									<tr>
										<td><%=vList.get(i).getId()%></td>
										<td><%=vList.get(i).getPuesto()%></td>
										<td><%=vList.get(i).getStatus()%></td>
										<td><%=vList.get(i).getCandidatos()%></td>
										<td><%=vList.get(i).getVacantes()%></td>
									</tr>
									<%
										}
									%>
								</tbody>	
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3 col-xs-offset-2">
				<input type="button" id="button" name="" value="Agregar Vacante"
					class="btn btn-primary">
			</div>
		</div>

		<div id="dialog_agregar_vacante" title="Agregar Vacante" hidden>
			<form action="" method="" accept-charset="utf-8">
				<fieldset>
					<div class="form-group">
						<label>Puesto:</label>
						<div>
							<input type="text" name="Puesto" value="" placeholder=""
								class="form-control" id="Puesto">
						</div>
					</div>
					<div class="form-group">
						<label>Status:</label>
						<div>
							<select name="Status" class="form-control" id="Status">
								<option value="publicacion">Publicacion</option>
								<option value="seleccion">Seleccion</option>
								<option value="entrevistas">Entrevistas</option>
								<option value="contratacion">Contratacion</option>
							</select>
						</div>
						<div class="form-group">
							<label>Candidatos:</label>
							<div>
								<input type="number" name="Candidato" value="" placeholder=""
									class="form-control" id="Candidato">
							</div>
						</div>
						<div class="form-group">
							<label>Vacante:</label>
							<div>
								<input type="number" name="Vacante" value="" placeholder=""
									class="form-control" id="Vacante">
							</div>
						</div>
                         <div class="form-group">

                            <div>
                                <input type="submit" name="Puesto" value="Agregar" placeholder=""
                                    class="form-control btn btn-primary">
                            </div>
                        </div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
	<script src="Resources/Js/jquery.js"></script>
	<script src="Resources/Js/bootstrap.js"></script>
	<script src="Resources/Js/jquery-ui.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="Resources/Js/funciones-tablas.js"></script>
</body>
</html>