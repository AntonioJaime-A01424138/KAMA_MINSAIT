package com.kama.KAMA_MINSAIT.Controller;

import com.google.gson.Gson;
import com.kama.KAMA_MINSAIT.dao.TablesCDao;
import com.kama.KAMA_MINSAIT.model.Candidato;
import com.kama.KAMA_MINSAIT.model.PuntajesTotal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "puntaje", value = "/puntaje")
public class PuntajeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idCandidato = request.getParameter("idCandidato").equals("") ? 0 : Integer.parseInt(request.getParameter("idCandidato"));
        TablesCDao tablesCDao = new TablesCDao();
        PuntajesTotal puntajeTotal = tablesCDao.obtenerPuntajeCandidato(idCandidato);

        Gson gson = new Gson();
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print(gson.toJson(puntajeTotal));
    }
}
