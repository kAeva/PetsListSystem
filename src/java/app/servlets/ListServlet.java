package app.servlets;

import app.model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListServlet", urlPatterns = {"/list"})
public class ListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Model model = Model.getInstance();
        List<String> names = model.list();
        request.setAttribute("petNames", names);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/list.jsp");
        requestDispatcher.forward(request, response);
    }
}

