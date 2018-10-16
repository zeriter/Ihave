package com.myhave.sell.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.myhave.other.ConnectionManager;
import com.myhave.sell.domain.Sell;

public class SellDao {
	public List<Sell> getSlist(int userid){
		List<Sell> list = new ArrayList<Sell>();
		Connection conn = ConnectionManager.getConnection();
		ResultSet rs = null;
		PreparedStatement ps = null;
        
		String sql = "select * FROM sell WHERE userid=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, userid);
			rs = ps.executeQuery();
			while(rs.next()){
				Sell s = new Sell();
				s.setId(rs.getInt(1));
				s.setOldid(rs.getInt(2));
				s.setUserid(rs.getInt(3));
				list.add(s);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ConnectionManager.releaseDB(rs, ps, conn);
		}
		return list;
		
		
		
	}
	public void addSell(Sell sell){
		Connection conn = ConnectionManager.getConnection();
	
		PreparedStatement ps = null;
		String sql = "insert into sell values (default,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, sell.getOldid());
			ps.setInt(2, sell.getUserid());
		    ps.execute();
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			ConnectionManager.releaseDB(null, ps, conn);
		}
		
	}

}
