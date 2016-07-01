package java_package;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletDBConnector
 */
@WebServlet("/ServletDBConnector")
public class ServletDBConnector extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletDBConnector() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("Can't load database driver");
		}
		
		Connection conn = null;
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/celeb_bdays", "root", "Fusion2016!");
		} 	catch (SQLException e) {
			//throw new ServletException();
			System.out.println("Can't connect to database");
			return;
		}
		
		
		System.out.println("Connected to database.");
		
		try {
			conn.close();
		} catch (SQLException e1) {

		}
		

		//String action = request.getParameter("action");
		
		//if (action == null) {
			//out.println("unrecognized action");
			//return;
		//}
		
		//if(action.equals("dologin")){
			//String email = request.getParameter("email");
			//String password = request.getParameter("password");
		
			//User user = new User(email, password);
		
			//request.setAttribute("email", email);
			//request.setAttribute("password", "");
		
			//Account account = new Account(conn);
		
			//if(account.login(email, password)) {
			//request.getRequestDispatcher("/homepage-results.jsp").forward(request, response);
			//}
			//else {
			//request.setAttribute("message", "email address or password not recognized");
			//request.getRequestDispatcher("/homepage.jsp").forward(request, response);
			//}
		
		//}
		//else {
			//out.println("unrecognized action");
			//return;
		//}
		
		
		try {
			conn.close();
		} catch (SQLException e) {

		}
	}
	
	/**	
	class BirthdayData {
		public BirthdayData() {};
		public String DOB_Month;
		public int DOB_Day;
		public String Zodiac_Sign;
	}
	
	public BirthdayData zodiacSign(parameters here){
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
