package com.myhave.buy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.myhave.old.domain.Old;
import com.myhave.other.ConnectionManager;
import com.myhave.user.domain.User;

public class BuyDao {
	
	public List<Old> getBlist(String sql){
		List<Old> list = new ArrayList<>();
		Connection conn = ConnectionManager.getConnection();
		ResultSet rs = null;
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			while(rs.next()){
				Old o = new Old();
				o.setId(rs.getInt(1));
				//System.out.println(o.getId());
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

	
	public List<User> getUlist(String sql){
		List<User> list1 = new ArrayList<>();
		Connection conn = ConnectionManager.getConnection();
		ResultSet rs = null;
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				User u = new User();
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
				list1.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			ConnectionManager.releaseDB(rs, ps, conn);
		}
		return list1;
		
	}
}
