package com.myhave.information.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myhave.information.dao.InformationDao;
import com.myhave.user.dao.UserDao;
import com.myhave.user.domain.User;

/**
 * Servlet implementation class UpdateAddressServlet
 */
public class UpdateAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		int id = Integer.parseInt(request.getParameter("id"));
		String address = new String(request.getParameter("address").getBytes("ISO8859-1"),"UTF-8");
		InformationDao infor = new InformationDao();
		infor.updateAddress(id, address);
		UserDao ud = new UserDao();
		User us = ud.selectById(id);
		HttpSession se = request.getSession();
		se.setAttribute("user", us);
		response.sendRedirect("information.jsp");
	}

}