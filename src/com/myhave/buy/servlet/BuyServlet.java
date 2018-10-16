package com.myhave.buy.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myhave.buy.dao.BuyDao;
import com.myhave.old.domain.Old;

/**
 * Servlet implementation class BuyServlet
 */
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyServlet() {
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
		//request.setCharacterEncoding("iso8859-1");
//		response.setContentType("text/html;charset=utf-8");
//		response. setCharacterEncoding("UTF-8");
		BuyDao bd = new BuyDao();
		String s1 = "select * FROM old";
		String s2 = "select * FROM old where kind='book'";
		String s3 = "select * FROM old where kind='compute'";
		String s4 = "select * FROM old where kind='coat'";
		String s5 = "select * FROM old where kind='other'";
		List<Old> list1 = bd.getBlist(s1);
		List<Old> list2 = bd.getBlist(s2);
		List<Old> list3 = bd.getBlist(s3);
		List<Old> list4 = bd.getBlist(s4);
		List<Old> list5 = bd.getBlist(s5);
		HttpSession session = request.getSession(true);
		request.setAttribute("alllist", list1);
		request.setAttribute("booklist", list2);
		request.setAttribute("computelist", list3);
		request.setAttribute("coatlist", list4);
		request.setAttribute("otherlist", list5);
//		for(Old o : list2){
//			System.out.println(o.getId());
//		}
		//response.sendRedirect("buy.jsp");
		 getServletContext().getRequestDispatcher("/buy.jsp").forward(request, response);
	
	}

}
