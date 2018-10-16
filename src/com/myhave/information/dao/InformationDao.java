package com.myhave.information.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.myhave.other.ConnectionManager;

public class InformationDao {
 
	public void updateUsername(int id,String username){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnectionManager.getConnection();
			// 创建查询窗口
			
			String sql = "update users set username=? where id=?";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, username);
			ps.setInt(2, id);
			

			// 执行sql语句
			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(null, ps, conn);
		}
	
	}
	public void updateAddress(int id,String address){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnectionManager.getConnection();
			// 创建查询窗口
			
			String sql = "update users set address=? where id=?";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, address);
			ps.setInt(2, id);
			

			// 执行sql语句
			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(null, ps, conn);
		}
	
	}
	public void updatePassword(int id,String password){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnectionManager.getConnection();
			// 创建查询窗口
			
			String sql = "update users set password=? where id=?";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, password);
			ps.setInt(2, id);
			

			// 执行sql语句
			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(null, ps, conn);
		}
	
	}
	public void updateTel(int id,String tel){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnectionManager.getConnection();
			// 创建查询窗口
			
			String sql = "update users set tel=? where id=?";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, tel);
			ps.setInt(2, id);
			

			// 执行sql语句
			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(null, ps, conn);
		}
	
	}
}
