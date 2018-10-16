package com.myhave.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.myhave.user.dao.UserDao;

/**
 * Servlet implementation class AddServletAjax
 */
public class AddServletAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServletAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		UserDao ud= new UserDao();
		boolean b = ud.checkEmail(request.getParameter("email"));
		if(b){
			response.setCharacterEncoding("utf-8");
			response.getWriter().write("<font color='red'>对不起，邮箱已存在</font>");
			return;
		}else{
			response.setCharacterEncoding("utf-8");
			response.getWriter().write("<font color='green'>邮箱可以使用</font>");
			return;
		}
	}

}
