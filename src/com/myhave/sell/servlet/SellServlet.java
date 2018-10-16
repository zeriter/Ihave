package com.myhave.sell.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myhave.old.domain.Old;

/**
 * Servlet implementation class SellServlet
 */
public class SellServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String kind = request.getParameter("old");
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		String word = request.getParameter("word");
		int userid =  Integer.parseInt(request.getParameter("userid"));
		Old o = new Old();
		o.setName(name);
		o.setKind(kind);
		o.setPrice(price);
		o.setWord(word);
		o.setUserid(userid);
	}

}
