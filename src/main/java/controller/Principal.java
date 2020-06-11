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


@WebServlet(urlPatterns = {"/"})
public class Principal extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,HttpServletResponse res){
        try{
            req.getRequestDispatcher("/jsp/login.jsp").forward(req, res);
        }
        catch(Exception e){
            System.out.println("Ocorreu o seguinte erro ao entrar: "+e);            
        }

        
        /*String path = req.getServletPath();
        ServletContext sc = req.getServletContext();
        System.out.println(path); 
        switch (path){
            case "/":
               try{
                    sc.getRequestDispatcher("/jsp/login.jsp").forward(req, res);
                } catch (Exception e){}
               break;
            case "/escrevernome.action":
                try{
                    req.setCharacterEncoding("UTF-8");
                    String nome = req.getParameter("nome_completo");
                    nome = nome.toUpperCase();
                    res.setContentType("text/html");
                    res.setCharacterEncoding("UTF-8");
                    req.setAttribute("nomeCompleto", nome);
                    sc.getRequestDispatcher("/jsp/resposta.jsp").forward(req, res);
                }catch (Exception e){}
            break;
            case "/inicio.action":
               try{
                    sc.getRequestDispatcher("/jsp/inicio.jsp").forward(req, res);
                } catch (Exception e){}
               break;
            case "/calculadora.action":
               try{
                    sc.getRequestDispatcher("/jsp/calculadora.jsp").forward(req, res);
                } catch (Exception e){}
               break;
            case "/historico.action":
               try{
                    sc.getRequestDispatcher("/jsp/historico.jsp").forward(req, res);
                } catch (Exception e){}
               break;
            default:
                try{
                   sc.getRequestDispatcher("/jsp/nao_encontrado.jsp").forward(req, res);
                }catch (Exception e){}               
        }*/
        
    }  
}