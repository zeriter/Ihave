package com.myhave.user.servlet;

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
 * Servlet implementation class CheckServlet
 */
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckServlet() {
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
		 String username=request.getParameter("username");
	     String pass=request.getParameter("password");
	     UserDao ud=new UserDao();
	     OldDao od = new OldDao();
	     SellDao sd = new SellDao();
	 	 //如果在数据库中有这个用户 就查询它的ID等其他信息
	     if(ud.check(username, pass)){
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
	    	   
	    		
				session.setAttribute("user", user);
				session.setAttribute("oldlist", list1);
				session.setAttribute("selllist", list2);
				
				//System.out.println(user);
	         response.sendRedirect("Home.jsp");		
	     }else{
	    	 	response.sendRedirect("login.jsp?error=1");
	     }
	     response.getWriter().write("<font color='red'>a</font>");
	     response.getWriter().flush();
	}

}
