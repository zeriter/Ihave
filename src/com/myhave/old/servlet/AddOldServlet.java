package com.myhave.old.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.myhave.old.dao.OldDao;
import com.myhave.old.domain.Old;

/**
 * Servlet implementation class SellServlet
 */
public class AddOldServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    // 上传文件存储目录

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddOldServlet() {
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
//		// TODO Auto-generated method stub

//		
        String[] s = new String[5];
        int i = 0;
		//开始文件上传代码,创建一个文件上传的工厂类
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//保存临时文件的目录
		//这个地址是tomcat服务器，webapps下的项目名字下的upload
		//要保证项目的webroot下游upload文件夹
		String path = request.getRealPath("/images/img-auditing");
		//设置的工厂的仓库
		factory.setRepository(new File(path));
		//开始使用工程开始上传文件
		ServletFileUpload upload = new ServletFileUpload(factory);
		//获取请求里面的值
		try {
			//此时请求包含三个item,此时的items集合包含三个对象，两个普通文本，一个文件
			List<FileItem> items = upload.parseRequest(request);
			for(FileItem item : items){//表示普通文本框
				if(item.isFormField()){
					
					s[i] = item.getString();
					
					i++;
					
				
					//System.out.println();
				}
			//拿到一个文件的输入流，我们创建一个输出流把文件写在服务器的硬盘上
				
					InputStream in = item.getInputStream();
					FileOutputStream out = new FileOutputStream(path+"/"+item.getName());
					
					int j = 0;
					byte[] bs = new byte[1024];
					while((j = in.read(bs)) != -1){
						out.write(bs,0,j);
					}
					in.close();
					out.close();
				}
			
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//
		Old o = new Old();
		OldDao od = new OldDao();
		o.setName(s[2]);
		o.setKind(s[0]);
		o.setPrice(Integer.parseInt(s[3]));
		o.setWord(s[4]);
		o.setUserid(Integer.parseInt(s[1]));
		od.addold(o);
		
		response.sendRedirect("sell.jsp");
	}

}
