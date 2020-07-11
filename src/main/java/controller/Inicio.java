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
import java.io.PrintWriter;

import model.Usuario;
import model.UsuarioService;

import javax.servlet.http.HttpSession;  

@WebServlet(urlPatterns = {"/inicio"})
public class Inicio extends HttpServlet{
    
    @Override
    public void doPost(HttpServletRequest req,HttpServletResponse res){
        try{
            UsuarioService us = new UsuarioService();
            String nomeUsuario = req.getParameter("nome_usuario");
            String senha = req.getParameter("senha");   
            senha = us.md5(senha); //criptografa

            Long codUsuarioLogado = us.login(nomeUsuario, senha);
            if (codUsuarioLogado > 0){
                HttpSession session = req.getSession();  
                session.setAttribute("nomeUsuario",nomeUsuario);
                session.setAttribute("codUsuario", Long.toString(codUsuarioLogado));
                req.getRequestDispatcher("/jsp/inicio.jsp").forward(req, res);
            }
            else{
                req.getRequestDispatcher("/jsp/login.jsp").forward(req, res);
            }           
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }        
    }  
    
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res){
        try{
            HttpSession session = req.getSession(false);  
            if((session!=null) && ((String)session.getAttribute("nomeUsuario") == null)){   
                res.sendRedirect(req.getContextPath() + "/");
            }
            req.getRequestDispatcher("/jsp/inicio.jsp").forward(req, res);
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }        
    } 
}
