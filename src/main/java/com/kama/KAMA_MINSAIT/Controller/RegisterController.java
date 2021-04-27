
package com.kama.KAMA_MINSAIT.Controller;

import com.kama.KAMA_MINSAIT.dao.RegisterDao;
import com.kama.KAMA_MINSAIT.model.Candidato;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registro", value = "/registro")
public class RegisterController extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String curp = request.getParameter("curp");
        String correo = request.getParameter("email");
        String password = request.getParameter("password");
        String formacion = request.getParameter("formacion");
        String area = request.getParameter("area");

        Candidato candidato = new Candidato(nombre, telefono, correo, curp, 0, password, formacion, area);

        RegisterDao registerDao = new RegisterDao();

        try {
            boolean n = registerDao.createApplicant(candidato, password);
            if(n){
                request.getRequestDispatcher("WEB-INF/index.jsp").forward(request,response);
            }else{
                request.setAttribute("mensaje","El curp o correo ya existe");
                request.getRequestDispatcher("register.jsp").forward(request,response);
            }
        }
        catch (Exception ex){
            System.out.println(ex.getMessage());
        }
    }

}