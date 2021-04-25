package com.kama.KAMA_MINSAIT.Controller;

import com.kama.KAMA_MINSAIT.dao.LoginDao;
import com.kama.KAMA_MINSAIT.dao.TablesCDao;
import com.kama.KAMA_MINSAIT.model.Candidato;
import com.kama.KAMA_MINSAIT.model.UsuarioMinsait;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "login", value = "/login")
public class LoginController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {


    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println(email);
        System.out.println(password);

        LoginDao loginDao = new LoginDao();
        String tipo = loginDao.getUserType(email);
        System.out.println(tipo);
        switch(tipo){
            case "Candidato":
                Candidato candidato = loginDao.verificaCandidato(email, password);
                System.out.println(candidato);
                if(candidato != null){
                    HttpSession sesion= request.getSession();
                    sesion.setAttribute("candidato",candidato);
                    sesion.removeAttribute("UsuarioMinsait");
                    response.sendRedirect("candidato");

                }else{
                    try {
                        request.setAttribute("mensaje", "El usuario o contrasñea son incorrectos, verifica");
                        request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
                    }catch (Exception ex){
                        System.out.println(ex.getMessage());
                    }
                }
                break;
            case "UsuarioMinsait":
                UsuarioMinsait usuarioMinsait = loginDao.verificaUsuarioMinsait(email, password);
                System.out.println(usuarioMinsait);
                if(usuarioMinsait != null){
                    HttpSession sesion= request.getSession();
                    sesion.setAttribute("UsuarioMinsait",usuarioMinsait);
                    sesion.removeAttribute("candidato");
                    response.sendRedirect("administrador");

                }else{
                    try {
                        request.setAttribute("mensaje", "El usuario o contrasñea son incorrectos, verifica");
                        request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
                    }catch (Exception ex){
                        System.out.println(ex.getMessage());
                    }

                }
                break;
            default:
                try{
                    request.setAttribute("mensaje", "El usuario o contraseña son inválidos, verífica!");
                    request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
                }catch(Exception ex){
                    System.out.println(ex.getMessage());
                }

                break;
        }




    }


}