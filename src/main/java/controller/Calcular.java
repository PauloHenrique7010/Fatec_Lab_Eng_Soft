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
            
        		
		    res.setContentType("text/plain");
		    res.getWriter().write(resultado.toString());
            //res.getWriter().write(numero2);
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }        
    } 
}