package com.myhave.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myhave.user.dao.UserDao;

/**
 * Servlet implementation class AddServletAjax1
 */
public class AddServletAjax1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServletAjax1() {
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
		boolean b = ud.checkUsername(request.getParameter("username"));
		if(b){
			response.setCharacterEncoding("utf-8");
			response.getWriter().write("<font color='red'>����û���̫�ܻ�ӭ���뻻һ����</font>");
			return;
		}else{
			response.setCharacterEncoding("utf-8");
			response.getWriter().write("<font color='green'>�û�������ʹ��</font>");
			return;
		}
	
	}

}
