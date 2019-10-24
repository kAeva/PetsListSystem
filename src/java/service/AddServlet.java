package service;

import common.Pet;
import common.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet(name = "AddServlet", urlPatterns = {"/add"})
public class AddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String breed = request.getParameter("breed");

        Pet pet = new Pet(name, age, breed);
        Pet pet1 = new Pet("Tom", "1", "breed1");
        Pet pet2 = new Pet("Rory", "2", "breed2");
        Model model = Model.getInstance();
        model.add(pet);
        model.add(pet1);
        model.add(pet2);

        request.setAttribute("petName", name);
        request.setAttribute("petAge", age);
        request.setAttribute("petBreed", breed);



        doGet(request, response);


    }





    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/add.jsp");
        requestDispatcher.forward(request, response);
    }
}
