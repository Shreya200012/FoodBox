package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddData
 */
@WebServlet("/AddData")
public class AddData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodweb","root","root");
			String qr = "insert into items values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(qr);
			ps.setString(1, request.getParameter("product") );
			ps.setString(2, request.getParameter("price") );
			ps.setString(3, request.getParameter("description") );
			ps.setInt(4, Integer.valueOf(request.getParameter("id")) );
			int i = ps.executeUpdate();
			con.close();
			out.println("Successfully Entered the data");
			
		}catch(Exception e ) {
			e.printStackTrace();
		}
		
		
		
	}

}
