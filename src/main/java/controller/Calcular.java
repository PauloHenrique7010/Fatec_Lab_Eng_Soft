/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;




import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; 

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import model.MdlCalculadora;
import java.util.Date;


@WebServlet(urlPatterns = {"/calcular"})
public class Calcular extends HttpServlet{
    
    @Override
    public void doPost(HttpServletRequest req,HttpServletResponse res){
        try{
            String numero1 = req.getParameter("numero1");
            String operacao = req.getParameter("operacao");
            String numero2 = req.getParameter("numero2");

            Double resultado = 0.0;
            Double n1;
            Double n2;

            n1 = Double.parseDouble(numero1);
            n2 = Double.parseDouble(numero2);

            if(operacao.equals("+")){
                resultado = n1 + n2;
            }

            EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");        
            EntityManager em = emf.createEntityManager();

            Integer codUsuario = 0;
            HttpSession session = req.getSession(false);  
            if((session!=null) && ((String)session.getAttribute("codUsuario") != null)){   
                codUsuario = Integer.parseInt((String)session.getAttribute("codUsuario"));
            }
        
            /* Criação de uma entidade - CREATE */        
            MdlCalculadora u0 = new MdlCalculadora();
            u0.setContaEfetuada(numero1+" "+operacao+" "+numero2+" = "+resultado.toString());
            Date x=new Date();
            u0.setDataOperacao(x);
            u0.setCodUsuario(codUsuario);
            em.getTransaction().begin();
            em.persist(u0);
            em.getTransaction().commit();
            
        		
		    res.setContentType("text/plain");
		    res.getWriter().write(resultado.toString());
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }        
    } 
}