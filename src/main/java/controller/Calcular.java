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
import java.lang.Math;


@WebServlet(urlPatterns = {"/calcular"})
public class Calcular extends HttpServlet{
    
    @Override
    public void doPost(HttpServletRequest req,HttpServletResponse res){
        try{
            String numero1 = req.getParameter("numero1");
            String operacao = req.getParameter("operacao");
            String numero2 = req.getParameter("numero2");

            Double resultado = 0.0;
            Double n1 = 0.0;
            Double n2 = 0.0;

            if (numero1 != ""){
                n1 = Double.parseDouble(numero1);
            }

            if (numero2 != ""){
                n2 = Double.parseDouble(numero2);
            }            
            

            if(operacao.equals("+")){
                resultado = n1 + n2;
            }
            if(operacao.equals("-")){
                resultado = n1 - n2;
            }
            if(operacao.equals("*")){
                resultado = n1 * n2;
            }
            if(operacao.equals("/")){
                resultado = n1 / n2;
            }
            if(operacao.equals("^")){
                resultado = Math.pow (n1, n2);
            }
            if(operacao.equals("V```")){
                resultado = Math.sqrt(n2);
            }
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");        
            EntityManager em = emf.createEntityManager();

            Integer codUsuario = 0;
            HttpSession session = req.getSession(false);  
            if((session!=null) && ((String)session.getAttribute("codUsuario") != null)){   
                codUsuario = Integer.parseInt((String)session.getAttribute("codUsuario"));
            }
        
            /* Criação de uma entidade - CREATE */        
            MdlCalculadora calc = new MdlCalculadora();
            calc.setContaEfetuada(numero1+" "+operacao+" "+numero2+" = "+resultado.toString());
            Date x=new Date();
            calc.setDataOperacao(x);
            calc.setCodUsuario(codUsuario);
            em.getTransaction().begin();
            em.persist(calc);
            em.getTransaction().commit();
            
        		
		    res.setContentType("text/plain");
		    res.getWriter().write(resultado.toString());
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }        
    } 
}