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


@WebServlet(urlPatterns = {"/calculadora"})
public class Calculadora extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res){
        try{
            req.getRequestDispatcher("/jsp/calculadora.jsp").forward(req, res);
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }        
    }  
}