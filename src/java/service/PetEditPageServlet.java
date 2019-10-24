package service;

import common.Model;
import common.Pet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "PetEditPageServlet", urlPatterns = {"/toedit"})
public class PetEditPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String indexId = request.getParameter("indexId");
        request.setAttribute("indexId", indexId);
        String petItem = request.getParameter("petItem");
        request.setAttribute("petItem", petItem);


     doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Model model = Model.getInstance();
        List<Pet> pets = model.list();
        request.setAttribute("pet", pets);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/listToEdit.jsp");
        requestDispatcher.forward(request, response);
    }
}
