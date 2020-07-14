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

import model.MdlCalculadora;
import model.MdlCalculadoraService;
import java.util.List;



@WebServlet(urlPatterns = {"/historico"})
public class Historico extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res){
        try{
            Integer codUsuario = 0;
            HttpSession session = req.getSession(false);  
            if((session!=null) && ((String)session.getAttribute("nomeUsuario") == null)){   
                res.sendRedirect(req.getContextPath() + "/");
            }
            else{//se estiver logado, continua o sistema
                if((session!=null) && ((String)session.getAttribute("codUsuario") != null)){   
                    codUsuario = Integer.parseInt((String)session.getAttribute("codUsuario"));
                }    
                if (codUsuario > 0){       
                    MdlCalculadoraService servCalc = new MdlCalculadoraService();
                    List<MdlCalculadora> registros = servCalc.list(codUsuario);			
                    req.setAttribute("registros", registros);
                    req.getRequestDispatcher("/jsp/historico.jsp").forward(req, res);
                }
            }
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }        
    }  
}