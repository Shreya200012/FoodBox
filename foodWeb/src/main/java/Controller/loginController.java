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
 * Servlet implementation class loginController
 */
@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}**/

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String un = request.getParameter("username");
	     String pw = request.getParameter("password");
	     PrintWriter out = response.getWriter();

	     try {
	            Class.forName("com.mysql.jdbc.Driver");
	// loads driver
	            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodweb", "root", "root"); // gets a new connection

	            PreparedStatement ps = c.prepareStatement("select usernaem,password from user where usernaem=? and password=?");
	            ps.setString(1, un);
	            ps.setString(2, pw);

	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	                response.sendRedirect("home.html");
	                return;
	            }
	            response.sendRedirect("index.html");
	            return;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
//		doGet(request, response);
	}


