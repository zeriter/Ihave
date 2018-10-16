package com.myhave.old.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.myhave.old.domain.Old;
import com.myhave.other.ConnectionManager;
import com.myhave.user.domain.User;
/**
 * 二手旧物操作类
 * @author acer
 *
 */

public class OldDao {
	public List<Old> getOlist(int userid){
		List<Old> list = new ArrayList<>();
		Connection conn = ConnectionManager.getConnection();
		ResultSet rs = null;
		PreparedStatement ps = null;
       
		String sql = "select * FROM old WHERE userid=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, userid);
			rs = ps.executeQuery();
			while(rs.next()){
				 Old o = new Old();
				o.setId(rs.getInt(1));
				o.setUrl(rs.getString(2));
				o.setPrice(rs.getInt(3));
				o.setWord(rs.getString(4));
				o.setUserid(rs.getInt(5));
				o.setKind(rs.getString(6));
				o.setName(rs.getString(7));
				list.add(o);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ConnectionManager.releaseDB(rs, ps, conn);
		}
		return list;
		
	}
	public Old getold(int id){
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Old o = null;
		try {
			conn = ConnectionManager.getConnection();
			String sql = "select * from old where id=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				o = new Old();
				o.setId(rs.getInt(1));
				o.setUrl(rs.getString(2));
				o.setPrice(rs.getInt(3));
				o.setWord(rs.getString(4));
				o.setUserid(rs.getInt(5));
				o.setKind(rs.getString(6));
			    o.setName(rs.getString(7));
				
			
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			ConnectionManager.releaseDB(rs, ps, conn);
		}

		return o;
		
	}
	public void addold(Old o){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = ConnectionManager.getConnection();
			// 创建查询窗口
			
			String sql = "insert into old values (default,default,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1,o.getPrice());
			ps.setString(2,o.getWord());
			ps.setInt(3,o.getUserid());
			ps.setString(4,o.getKind());
			ps.setString(5,o.getName());

			// 执行sql语句
			ps.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.releaseDB(null, ps, conn);
		}
	}
	public void deleteOld(int id){
		
			Connection conn = null;
			PreparedStatement ps = null;
			try {
				conn = ConnectionManager.getConnection();
				// 创建查询窗口
				
				String sql = "DELETE from old WHERE id=?";
				ps = conn.prepareStatement(sql);
				
				ps.setInt(1,id);
				

				// 执行sql语句
				ps.execute();

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				ConnectionManager.releaseDB(null, ps, conn);
			}
		
	}
	

}
