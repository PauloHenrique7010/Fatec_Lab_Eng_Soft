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


@WebServlet(urlPatterns = {"/logout"})
public class Logout extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res){
        try{
            HttpSession session = req.getSession();  
            session.invalidate();                
            res.sendRedirect(req.getContextPath() + "/");            
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }       
    }  
}