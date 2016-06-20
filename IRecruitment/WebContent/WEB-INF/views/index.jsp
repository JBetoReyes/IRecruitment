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
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- style-table -->
    <link href="Resources/Css/style-table.css" rel="stylesheet">
    
    
</head>
<body>
    <div class="container">
    	<div class="panel panel-primary">
    		<div class="panel-heading">
    			Entrevistas pendientes
    		</div>
    		<table class="table table-striped table-hover">
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
    			List<Vacantes> vList =(List<Vacantes>) request.getAttribute("lista_vacantes");
    			
    			for(Integer i = 0; i < vList.size(); i ++)
    			{
    				
    			%>
    			<tr>
    				<td><%=vList.get(i).getId() %></td>
    				<td><%=vList.get(i).getPuesto()%></td>
    				<td><%=vList.get(i).getStatus()%></td>
    				<td><%=vList.get(i).getCandidatos()%></td>
    				<td><%=vList.get(i).getVacantes()%></td>
    			</tr>
    			<%
    			}
    			%>
    			</tbody>
    			<tfoot>
    				<tr class=hide id="">
    					<td></td>
    					<td></td>
    					<td></td>
    					<td></td>
    				</tr>
    			</tfoot>
    		</table>
    	</div>  	
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>