package com.kama.KAMA_MINSAIT.Controller;

import com.google.gson.Gson;
import com.kama.KAMA_MINSAIT.dao.TablesCDao;
import com.kama.KAMA_MINSAIT.model.Candidato;
import com.mysql.cj.xdevapi.Table;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "candidato", value = "/candidato")
public class CandidatoController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            HttpSession sesion= request.getSession();
            if(sesion.getAttribute("candidato")!= null){
                request.getRequestDispatcher("WEB-INF/Home_Candidato.jsp").forward(request,response);
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
        int idCandidato = request.getParameter("idCandidato").equals("") ? 0 : Integer.parseInt(request.getParameter("idCandidato"));
        // condicion ? valor verdadero : valor falso
        TablesCDao tablesCDao = new TablesCDao();
        Candidato candidato = tablesCDao.obtenerCandidato(idCandidato);

        Gson gson = new Gson();
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print(gson.toJson(candidato));
    }
}
