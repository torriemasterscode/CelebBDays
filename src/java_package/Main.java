package java_package;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Main extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		String servletPath = req.getServletPath();
		System.out.println("Servlet Path was " + servletPath);

		String pathInfo = req.getPathInfo();
		System.out.println("Path Info was " + pathInfo);

		if (pathInfo == null || "/".equals(pathInfo)) {
			doIntro(req, resp);
		//} //else if ("/morewords".equals(pathInfo)) {
			//doMoreWords(req, resp);
		} else if ("/results".equals(pathInfo)) {
			doResults(req, resp);
		} else {
			PrintWriter pw = resp.getWriter();
			pw.println("Got pathInfo of " + pathInfo + " -- that's unexpected!");
		}
	}

	private void doIntro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/homepage.jsp").forward(req, resp);
	}

	//private void doMoreWords(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//req.setAttribute("month", req.getParameter("month"));
		//req.setAttribute("date", req.getParameter("date"));
		//req.getRequestDispatcher("/WEB-INF/homepage-results.jsp").forward(req, resp);
	//}

	private void doResults(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("birthMonth", req.getParameter("birthMonth"));
		req.setAttribute("birthDate", req.getParameter("birthDate"));
		req.getRequestDispatcher("/WEB-INF/homepage-results.jsp").forward(req, resp);
	}
	
	//String month;
	//String date;
	
	//public void doCalculation(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//if(birthMonth.equals("January")){
			//switch(date){
				//case "1":
					//System.out.println("Celeb name 1 here!");
					//break;
				//case "2":
					//System.out.println("Celeb name 2 here!");
					//break;
				//case "3":
					//System.out.println("Celeb name 3 here!");
			//}
		//}
}



//package java_package;

//import java.util.ArrayList;

//public class Main {

	//public static void main(String[] args) {
		//DBConnect connect = new DBConnect(); //create instance of class DBConnect
		
		//Birthday birthday = new Birthday("October", 27);
		//Birthday anotherBirthday;
		//anotherBirthday = birthday;
		//anotherBirthday.setDate(31);
		//System.out.println("Birthday month for person is " + birthday.getMonth() + birthday.getDate());
		
		//ArrayList<Integer> intList = new ArrayList<Integer>();
		
		//intList.add(1);
		//intList.add(3);
		//intList.add(4);
		
		//for(int i=0; i<intList.size(); i++) {
			//System.out.println(i + ": " + intList.get(i));
		//}
		
		//intList.add(1, 2);
		
		//for(int i=0; i<intList.size(); i++) {
			//System.out.println(i + ": " + intList.get(i));
		//}
	//}
//}
