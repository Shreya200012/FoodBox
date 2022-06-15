package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerController
 */
@WebServlet("/registerController")
public class registerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerController() {
        super();
        // TODO Auto-generated constructor stub
    } 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		 String firstname = request.getParameter("firstname");
	     String lastname = request.getParameter("lastname");
	     String gender=request.getParameter("gender");
	     String  phone= request.getParameter("phone");
	     String add=request.getParameter("address");
	     String username=request.getParameter("username");
	     String password=request.getParameter("password");

	     PrintWriter out = response.getWriter();

	     try {
	            Class.forName("com.mysql.jdbc.Driver");
	// loads driver
	            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodweb", "root", "root"); // gets a new connection

	            PreparedStatement ps = c.prepareStatement("insert into newuser values(?,?,?,?,?,?,?)");
	            ps.setString(1, firstname);
	            ps.setString(2, lastname);
	            ps.setString(3, gender);
	            ps.setString(4, phone);
	            ps.setString(5, add);
	            ps.setString(6, username);
	            ps.setString(7, password);

	            int i = ps.executeUpdate();

	            out.print(i+" added");
	            response.sendRedirect("home.html");
	            return;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
