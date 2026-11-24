package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet")
public class Profileservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String name      = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String program   = request.getParameter("program");
        String email     = request.getParameter("email");
        String intro     = request.getParameter("intro");
        String[] hobbies = request.getParameterValues("hobbies");

        String hobbiesText = (hobbies == null) ? "No hobbies selected" : String.join(", ", hobbies);

        request.setAttribute("name", name);
        request.setAttribute("studentId", studentId);
        request.setAttribute("program", program);
        request.setAttribute("email", email);
        request.setAttribute("hobbies", hobbiesText);
        request.setAttribute("intro", intro);

        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.sendRedirect("index.html");
    }
}