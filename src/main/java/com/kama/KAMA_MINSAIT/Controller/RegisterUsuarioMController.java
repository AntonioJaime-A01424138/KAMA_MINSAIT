package com.kama.KAMA_MINSAIT.Controller;

import com.kama.KAMA_MINSAIT.model.UsuarioMinsait;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registroUsuarioM", value = "/registroUsuarioM")
public class RegisterUsuarioMController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("email");
        String password = request.getParameter("password");

        UsuarioMinsait usuarioMinsait = new UsuarioMinsait(nombre,telefono,correo, "", password);


    }

}
