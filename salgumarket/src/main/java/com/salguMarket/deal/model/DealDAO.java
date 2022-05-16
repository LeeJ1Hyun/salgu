package com.salguMarket.deal.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.salguMarket.db.ConnectionPoolMgr2;

public class DealDAO {
	private ConnectionPoolMgr2 pool;

	public DealDAO() {
		pool = new ConnectionPoolMgr2();
	}
	
	public int insertDeal(int bNo, int buyerNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into deal(dNo, bNo, buyerNo, dealdate) "
					+ "values(deal_seq.nextval, ?, ?, sysdate);";
			ps = con.prepareStatement(sql);
			ps.setInt(1, bNo);
			ps.setInt(2, buyerNo);
			
			int cnt = ps.executeUpdate();
			
			System.out.println("거래(구매) 입력 결과 cnt = " + cnt
					+ ", 매개변수 bNo/buyerNo = " + bNo + "/" + buyerNo);
			
			return cnt;
			
		} finally {
			pool.dbClose(ps, con);
		}
	}
	
/*	public int updateDeal(int bNo, int buyerNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into deal(dNo, bNo, buyerNo, dealdate) "
					+ "values(deal_seq.nextval, ?, ?, sysdate);";
			ps = con.prepareStatement(sql);
			ps.setInt(1, bNo);
			ps.setInt(2, buyerNo);
			
			int cnt = ps.executeUpdate();
			
			System.out.println("거래(구매) 입력 결과 cnt = " + cnt
					+ ", 매개변수 bNo/buyerNo = " + bNo + "/" + buyerNo);
			
			return cnt;
			
		} finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int deleteDeal(int bNo, int buyerNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = pool.getConnection();
			
			String sql = "insert into deal(dNo, bNo, buyerNo, dealdate) "
					+ "values(deal_seq.nextval, ?, ?, sysdate);";
			ps = con.prepareStatement(sql);
			ps.setInt(1, bNo);
			ps.setInt(2, buyerNo);
			
			int cnt = ps.executeUpdate();
			
			System.out.println("거래(구매) 입력 결과 cnt = " + cnt
					+ ", 매개변수 bNo/buyerNo = " + bNo + "/" + buyerNo);
			
			return cnt;
			
		} finally {
			pool.dbClose(ps, con);
		}
	} 																		*/
	
	public List<DealVO> selectDealByBuyerNo(int buyerNo) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<DealVO> list = new ArrayList<DealVO>();
		
		try {
			con = pool.getConnection();
			
			String sql = "select * from deal where = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, buyerNo);
			
			rs = ps.executeQuery();
			while(rs.next()) {
				DealVO vo = new DealVO(rs.getInt("dNo"), rs.getInt("bNo"), rs.getInt("buyerNo"), rs.getTimestamp("dealdate"));
				
				list.add(vo);
			}
			
			System.out.println("거래(구매) 조회 결과 listSize = " + list.size()
					+ ", 매개변수 buyerNo = " + buyerNo);
			
			return list;
			
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	
}
