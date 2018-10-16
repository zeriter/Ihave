package com.myhave.buy.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myhave.buy.dao.BuyDao;
import com.myhave.old.domain.Old;
import com.myhave.user.domain.User;

/**
 * Servlet implementation class DetailServlet
 */
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
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
		String s1 = request.getParameter("id");
		BuyDao bd = new BuyDao();
		String sql1 = "select * from old where id = "+s1;
		List<Old> list1 = bd.getBlist(sql1);
		
		String s2 = request.getParameter("userid"); 
		String sql2 = "select * from users where id = "+s2;
		List<User> list2 = bd.getUlist(sql2);
		request.setAttribute("detaillist1", list1);
		request.setAttribute("detaillist2", list2);
		getServletContext().getRequestDispatcher("/detail.jsp").forward(request, response);
	}

}
