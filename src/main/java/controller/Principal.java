/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession; 

@WebServlet(urlPatterns = {"/"})
public class Principal extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res){
        try{
            HttpSession session = req.getSession(false);  
            if(session!=null){  
                String name = (String)session.getAttribute("nomeUsuario");  
                String cod = (String)session.getAttribute("codUsuario");  
          
                System.out.print("Hello, "+name+" Welcome to Profile");  
                System.out.print("Seu código é: "+cod);
            
            
            }  
            req.getRequestDispatcher("/jsp/login.jsp").forward(req, res);
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }       
    }  
}