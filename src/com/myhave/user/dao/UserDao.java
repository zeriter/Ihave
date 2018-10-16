package com.myhave.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.myhave.other.ConnectionManager;
import com.myhave.user.domain.User;

public class UserDao {
	public boolean check(String u, String p) {
		Connection conn = ConnectionManager.getConnection();
		ResultSet rs = null;
		PreparedStatement ps = null;

		String sql = "select * from users where username=? and password=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, u);
			ps.setString(2, p);
			rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(rs, ps, conn);
		}

		return false;
	}

	public User select(String username) {
		User u = new User();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = ConnectionManager.getConnection();
			String sql = "select * from users where username=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			while (rs.next()) {
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setTel(rs.getString(3));
				u.setUsername(rs.getString(4));
				u.setPassword(rs.getString(5));
				u.setAddress(rs.getString(6));
				u.setEmail(rs.getString(7));
				u.setSchool(rs.getString(8));
				u.setSex(rs.getInt(9));
				u.setQianming(rs.getString(10));

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(rs, ps, conn);
		}

		return u;

	}

	public User selectById(int id) {
		User u = new User();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = ConnectionManager.getConnection();
			String sql = "select * from users where id=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setTel(rs.getString(3));
				u.setUsername(rs.getString(4));
				u.setPassword(rs.getString(5));
				u.setAddress(rs.getString(6));
				u.setEmail(rs.getString(7));
				u.setSchool(rs.getString(8));
				u.setSex(rs.getInt(9));
				u.setQianming(rs.getString(10));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(rs, ps, conn);
		}

		return u;

	}

	public void add(User u) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnectionManager.getConnection();
			// 创建查询窗口
			String sql = "insert into users values (default,?,?,?,?,?,?,?,?,default)";
			ps = conn.prepareStatement(sql);

			ps.setString(1, u.getName());
			ps.setString(2, u.getTel());
			ps.setString(3, u.getUsername());
			ps.setString(4, u.getPassword());
			ps.setString(5, u.getAddress());
			ps.setString(6, u.getEmail());
			ps.setString(7, u.getSchool());
			ps.setInt(8, u.getSex());
			// 执行sql语句
			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(null, ps, conn);
		}
	}

	public boolean checkEmail(String eml) {
		Connection conn = ConnectionManager.getConnection();
		ResultSet rs = null;
		PreparedStatement ps = null;

		String sql = "select * from users where email=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, eml);
			rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(rs, ps, conn);
		}

		return false;
	}
	
	public boolean checkUsername(String username) {
		Connection conn = ConnectionManager.getConnection();
		ResultSet rs = null;
		PreparedStatement ps = null;

		String sql = "select * from users where username=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(rs, ps, conn);
		}

		return false;
	}

}
