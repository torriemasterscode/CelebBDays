package java_package;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FamousBdaysServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		String servletPath = req.getServletPath();
		System.out.println("Servlet Path was " + servletPath);

		String pathInfo = req.getPathInfo();
		System.out.println("Path Info was " + pathInfo);

		if (pathInfo == null || "/".equals(pathInfo)) {
			doIntro(req, resp);
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

	private void doResults(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String famousPeopleNames[] = getFamousPeople();
		
		
		String person = famousPeopleNames[1];
		
		req.setAttribute("famousPerson", person);
		
		System.out.println("TEST: " + person);
		
		req.setAttribute("birthMonth", req.getParameter("birthMonth"));
		req.setAttribute("birthDate", req.getParameter("birthDate"));
		req.getRequestDispatcher("/WEB-INF/homepage-results.jsp").forward(req, resp);
	}

	private String[] getFamousPeople() {
		// TODO Auto-generated method stub
		String famousPeopleNames[] = new String[366];
		famousPeopleNames[0] = "Paul Revere"; //January 1
		famousPeopleNames[1] = "Cuba Gooding Jr.";
		famousPeopleNames[2] = "Mel Gibson";
		
		return famousPeopleNames;
	}
		
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

