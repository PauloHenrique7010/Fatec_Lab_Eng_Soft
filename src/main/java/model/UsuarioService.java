  
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

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;



/**
 *
 * @author paulo
 */

public class UsuarioService { //persistence class
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");        
    EntityManager em = emf.createEntityManager();

	public List<Usuario> list(){
            

            List<Usuario> calc = null;
            Query query = em.createQuery("FROM calculadora c"); 
            calc = query.getResultList();
            em.close();
            emf.close();
            return calc;            
	}

    public long login(String nome, String senha){
        Query query = em.createQuery("FROM usuario u where nome_usuario=:nomeUsuario"); 
        query.setParameter("nomeUsuario", nome);
        List<Usuario> usuarios = query.getResultList();
        if (usuarios.isEmpty()){
            System.out.println("Esta vazia!");
        }
        else{
            for(Usuario ui: usuarios){
                if (ui.getSenha().equals(senha)){
                    return ui.getId();
                }
                else{
                    return 0;
                }
            } 
        }
        return 0;
    }

    public static String md5(String input) {
     
    String md5 = null;
     
    if(null == input) return null;
     
    try {
         
    //Create MessageDigest object for MD5
    MessageDigest digest = MessageDigest.getInstance("MD5");
     
    //Update input string in message digest
    digest.update(input.getBytes(), 0, input.length());

    //Converts message digest value in base 16 (hex) 
    md5 = new BigInteger(1, digest.digest()).toString(16);

    } catch (NoSuchAlgorithmException e) {

        e.printStackTrace();
    }
    return md5;
}
	
}