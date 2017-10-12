package org.dimigo.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static HashMap<String, String> member = new HashMap<String, String>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        member.put("test@naver.com", "1234");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendError(404);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();
		
		HashMap<String, String> map = new HashMap<String, String>();
	
		String logged_in = (String) request.getSession().getAttribute("logged_id");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		map.put("logged_in", logged_in);
		map.put("email", email);
		
		if(logged_in == "true") {
			map.put("status", "fail");
			map.put("msg", "You are already logged in");
		} else {
			if(password.equals(member.get(email))) {
				map.put("status", "success");
				map.put("msg", "Login success!");
				request.getSession().setAttribute("logged_in", "true");
				request.getSession().setAttribute("email", email);
			} else {
				map.put("status", "fail");
				map.put("msg", "Check you ID or Password");
			}
		}
		
		response.getWriter().append(gson.toJson(map));
	}

}
