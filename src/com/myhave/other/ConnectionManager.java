package com.myhave.other;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/*
 * ����jdbc������
 * 
 */
public class ConnectionManager {
	
	
	
	//��ȡjdbc�����ķ���
	public static Connection getConnection(){
	//1.����properties����
	Properties pro = new Properties();
	//2.��ȡjdbc.properties��������
	InputStream in = ConnectionManager.class.getClassLoader()
			.getResourceAsStream("jdbc.properties");
	//3.���ض�Ӧ�����
	
	 Connection conn = null;
	//4. �������ݿ���������(��Ӧ�� Driver ʵ��������ע�������ľ�̬�����.)
	try {
		pro.load(in);
		String user = pro.getProperty("user");
		String password = pro.getProperty("password");
		String jdbcUrl = pro.getProperty("jdbcUrl");
		String driver = pro.getProperty("driver");
		Class.forName(driver);
       conn = DriverManager.getConnection(jdbcUrl, user, password);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

		return conn;
	
	}
	public static void releaseDB(ResultSet resultSet, Statement statement,
			Connection connection) {

		if (resultSet != null) {
			try {
				resultSet.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
