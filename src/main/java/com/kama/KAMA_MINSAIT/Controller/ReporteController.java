package com.kama.KAMA_MINSAIT.Controller;

import com.kama.KAMA_MINSAIT.utility.MySQLConnection;
import net.sf.jasperreports.engine.JasperRunManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "reporte", value = "/reporte")
public class ReporteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idcandidato = request.getParameter("idCandidato");
        String curp = request.getParameter("curp");
        String report = "/WEB-INF/reports/Blank_A4.jasper";
        File file = new File(getServletContext().getRealPath(report));
        InputStream input = new FileInputStream(file);
        // Para enviar parámetros al reporte se usa Map
        // clave-valor
        Map parameters = new HashMap();
        parameters.put("IdCandidato",idcandidato);
        parameters.put("imagen", getClass().getResourceAsStream("/Logo_minsait.png"));

        //
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment;filename="+curp+".pdf");
        try {
            // bytes del reporte, parametros, conexion
            byte[] bytes = JasperRunManager.runReportToPdf(input, parameters, MySQLConnection.getConnection());
            OutputStream out = response.getOutputStream();
            out.write(bytes);
            out.flush();
            out.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
