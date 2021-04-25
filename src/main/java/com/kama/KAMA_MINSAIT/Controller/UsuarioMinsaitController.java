package com.kama.KAMA_MINSAIT.Controller;

import com.kama.KAMA_MINSAIT.dao.TablesCDao;
import com.kama.KAMA_MINSAIT.model.Candidato;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "administrador", value = "/administrador")
public class UsuarioMinsaitController extends HttpServlet {
    private TablesCDao CandidatoDao;
    @Override
    public void init() {
        CandidatoDao = new TablesCDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            HttpSession sesion= request.getSession();
            if(sesion.getAttribute("UsuarioMinsait")!= null){
                List<Candidato> listaCandidatos= CandidatoDao.obtenerLista();
                request.setAttribute("ListaC",listaCandidatos);
                request.getRequestDispatcher("WEB-INF/Home_UsuarioM.jsp").forward(request,response);
            }else{
                request.setAttribute("mensaje","No tienes acceso, Inicia sesion");
                request.getRequestDispatcher("WEB-INF/index.jsp").forward(request,response);
            }

        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
