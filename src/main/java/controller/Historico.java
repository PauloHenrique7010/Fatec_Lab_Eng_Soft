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


import model.MdlCalculadora;
import model.MdlCalculadoraService;
import java.util.List;
import javax.servlet.http.HttpSession; 


@WebServlet(urlPatterns = {"/historico"})
public class Historico extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res){
        try{
            HttpSession session = req.getSession(false);  
            if((session!=null) && ((String)session.getAttribute("nomeUsuario") == null)){   
                res.sendRedirect(req.getContextPath() + "/");
            }
            

            MdlCalculadoraService servCalc = new MdlCalculadoraService();
		    List<MdlCalculadora> registros = servCalc.list();			
		    req.setAttribute("registros", registros);
            req.getRequestDispatcher("/jsp/historico.jsp").forward(req, res);
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }        
    }  
}