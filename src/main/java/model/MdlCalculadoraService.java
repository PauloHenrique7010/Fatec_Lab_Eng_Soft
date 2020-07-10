  
/*
** This file contains the persistence class.
** Each class attribute is known as persistence attribute
 */
package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.hibernate.HibernateException;

/**
 *
 * @author paulo
 */

public class MdlCalculadoraService { //persistence class
    
	public List<MdlCalculadora> list(){
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");        
            EntityManager em = emf.createEntityManager();

            List<MdlCalculadora> calc = null;
            Query query = em.createQuery("FROM calculadora c"); 
            calc = query.getResultList();
            em.close();
            emf.close();
            return calc;            
	}
	
}