/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fabriciogmc
 */
@WebServlet("/home")
public class Home extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,
                       HttpServletResponse res){
        try{
            PrintWriter pw = res.getWriter();
            pw.write("Subindo o servidor com gradle!\n");
            pw.write("Paulo Henrique da silva");
            pw.close();
        } 
        catch (Exception e){}
    }  
}
