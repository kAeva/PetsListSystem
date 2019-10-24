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

@WebServlet(name = "DeletePetServlet", urlPatterns = {"/deletepet"})
public class DeletePetServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Model model = Model.getInstance();
        List<Pet> pets = model.list();
        request.setAttribute("pet", pets);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/PetPage.jsp");
        requestDispatcher.forward(request, response);

    }
}
