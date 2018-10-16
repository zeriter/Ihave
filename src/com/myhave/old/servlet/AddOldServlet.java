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
    // �ϴ��ļ��洢Ŀ¼

       
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
		//��ʼ�ļ��ϴ�����,����һ���ļ��ϴ��Ĺ�����
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//������ʱ�ļ���Ŀ¼
		//�����ַ��tomcat��������webapps�µ���Ŀ�����µ�upload
		//Ҫ��֤��Ŀ��webroot����upload�ļ���
		String path = request.getRealPath("/images/img-auditing");
		//���õĹ����Ĳֿ�
		factory.setRepository(new File(path));
		//��ʼʹ�ù��̿�ʼ�ϴ��ļ�
		ServletFileUpload upload = new ServletFileUpload(factory);
		//��ȡ���������ֵ
		try {
			//��ʱ�����������item,��ʱ��items���ϰ�����������������ͨ�ı���һ���ļ�
			List<FileItem> items = upload.parseRequest(request);
			for(FileItem item : items){//��ʾ��ͨ�ı���
				if(item.isFormField()){
					
					s[i] = item.getString();
					
					i++;
					
				
					//System.out.println();
				}
			//�õ�һ���ļ��������������Ǵ���һ����������ļ�д�ڷ�������Ӳ����
				
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
