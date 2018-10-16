package com.myhave.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myhave.user.dao.UserDao;
import com.myhave.user.domain.User;

/**
 * Servlet implementation class AddServlet
 */
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8");		
		String address = new String(request.getParameter("address").getBytes("ISO8859-1"),"UTF-8");
		String email = request.getParameter("email");
		String school = new String(request.getParameter("school").getBytes("ISO8859-1"),"UTF-8");
		String tel = request.getParameter("tel");
        String sex = request.getParameter("sex");
        int x = Integer.parseInt(sex);
		String username = new String(request.getParameter("username").getBytes("ISO8859-1"),"UTF-8");
		String password = request.getParameter("password");

		UserDao ud = new UserDao();
		User u = new User();
		u.setName(name);
		u.setAddress(address);
		u.setEmail(email);
		u.setSchool(school);
		u.setTel(tel);
		u.setSex(x);
		u.setUsername(username);
		u.setPassword(password);

		ud.add(u);
		request.setAttribute("username", username);

		HttpSession session = request.getSession(true);
		session.setAttribute("user", u);
		
		response.sendRedirect("login.jsp");

	}

}
