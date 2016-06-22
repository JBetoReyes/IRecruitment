package com.iRecruitment.controllers;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import com.iRecruitment.herramientas.VacantesHerramienta;
import com.iRecruitment.modelos.Vacantes;
import java.util.List;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Servlet implementation class AgregarVacantes
 */
@WebServlet("/AgregarVacantes")
public class AgregarVacantes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	VacantesHerramienta vacH;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarVacantes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		
		String json ="";
		
		if(br != null)
		{
			json = br.readLine();
		}
		
		List<Vacantes> vList = (List<Vacantes>) vacH.getVacantes();
		
		ObjectMapper mapper = new ObjectMapper();
		
		Vacantes vacante = mapper.readValue(json, Vacantes.class);
		
		vacante.setId(vList.size() + 1);
		
		vacH.addVacante(vacante);
		
		vList.add(vacante);
		
		response.setContentType("application/json");
		
		mapper.writeValue(response.getOutputStream(), vList);
		
	}

}
