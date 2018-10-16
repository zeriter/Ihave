package com.myhave.forget.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.myhave.other.ConnectionManager;

public class ForgetDao {
	public void UpdateByTel(String tel,String username,String password){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnectionManager.getConnection();
			// 创建查询窗口
			String sql = "update users set username=?,password=? where tel=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, tel);

		
			// 执行sql语句
			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(null, ps, conn);
		}
		
		
	}

}
