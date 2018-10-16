package com.myhave.information.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myhave.old.dao.OldDao;
import com.myhave.old.domain.Old;
import com.myhave.sell.dao.SellDao;
import com.myhave.sell.domain.Sell;
import com.myhave.user.dao.UserDao;
import com.myhave.user.domain.User;

/**
 * Servlet implementation class InformationServlet
 */
public class InformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InformationServlet() {
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
	     UserDao ud=new UserDao();
	     OldDao od = new OldDao();
	     SellDao sd = new SellDao();
	 	 //如果在数据库中有这个用户 就查询它的ID等其他信息
	     String username = request.getParameter("username");
	    	 HttpSession session=request.getSession(true);
	    	    User user=ud.select(username);
	    	    int userid = user.getId();
	    	    //list1集合存取显示上架商品的Old.
	    	    List<Old> list1 = od.getOlist(userid);
	    	    List<Sell> slist = sd.getSlist(userid);
	    	    //list2集合存取显示购物足迹的Old；
	    	    List<Old> list2 = new ArrayList<>();
	    	    for(Sell s : slist){
	    	    	list2.add(od.getold(s.getOldid()));
	    	    }
	    	    session.setAttribute("oldlist", list1);
			session.setAttribute("selllist", list2);
			response.sendRedirect("information.jsp");
	}
}
