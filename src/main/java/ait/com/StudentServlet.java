package ait.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/students")
public class StudentServlet extends HttpServlet {

    private List<Student> students = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<h2>Student List</h2>");
        for (Student s : students) {
            out.println("<p>" + s.getId() + " - " + s.getName() + " - " + s.getCourse() + "</p>");
        }

        out.println("<h3>Add Student</h3>");
        out.println("<form method='post'>");
        out.println("ID: <input type='text' name='id'/><br/>");
        out.println("Name: <input type='text' name='name'/><br/>");
        out.println("Course: <input type='text' name='course'/><br/>");
        out.println("<input type='submit' value='Add'/>");
        out.println("</form>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String course = request.getParameter("course");

        students.add(new Student(id, name, course));

        response.sendRedirect("students");
    }
}