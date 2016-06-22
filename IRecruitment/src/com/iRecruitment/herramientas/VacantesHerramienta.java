package com.iRecruitment.herramientas;

import javax.persistence.TypedQuery;
import javax.persistence.PersistenceContext;
import javax.persistence.EntityManager;
import com.iRecruitment.modelos.Vacantes;
import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class VacantesHerramienta
 */
@Stateless
@LocalBean
public class VacantesHerramienta {

    /**
     * Default constructor. 
     */
    public VacantesHerramienta() {
        // TODO Auto-generated constructor stub
    }
    
    @PersistenceContext(unitName = "IRecruitment")
    EntityManager em;
    
    public List<Vacantes> getVacantes(){
    
    	TypedQuery<Vacantes> query = em.createNamedQuery("getAllFlights",Vacantes.class);
    	
    	List<Vacantes> results = query.getResultList();
    	
    	return results;
    }
    
    public void addVacante(Vacantes v)
    {
    	em.persist(v);
    }

}
