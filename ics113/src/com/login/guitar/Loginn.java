package com.login.guitar;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Loginn
 */
@WebServlet("/Loginn")
public class Loginn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String u = "admin";
		String p = "default";
		String uname = request.getParameter("username");
		String pword = request.getParameter("password");
		if(uname.equals(u) && pword.equals(p)){
			session.setAttribute("user", session.getAttribute("uname"));
			response.sendRedirect("home member.html");
		}
		else{
			PrintWriter out = response.getWriter();
			out.println("Could not log in. Valid credentials were not provided.");
		}
	}
}


