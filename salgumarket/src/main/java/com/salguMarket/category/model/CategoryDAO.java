package com.salguMarket.category.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.salguMarket.db.ConnectionPoolMgr2;

public class CategoryDAO {
	private ConnectionPoolMgr2 pool;
	private 

	public CategoryDAO() {
		pool = new ConnectionPoolMgr2();
	}

	public List<CategoryVO> selectAll() throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<CategoryVO> list = new ArrayList<CategoryVO>();
		try {
			// 1,2
			con = pool.getConnection();

			// 3
			String sql = "select * from board";
			ps = con.prepareStatement(sql);

			rs = ps.executeQuery();
			while (rs.next()) {
				String cName = rs.getString("cName");
				String cCode = rs.getString("cCode");
				String cNoRef = rs.getString("cNoRef");

				CategoryVO vo = new CategoryVO(cName, cCode, cNoRef);
				list.add(vo);
			}
			System.out.println("전체 조회 결과 list.size=" + list.size());
			return list;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}

	public List<BoardVO> selectByCategory(String category) throws SQLException { //카테고리로 조회
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<BoardVO> list = new ArrayList<BoardVO>();
		try {
			// 1,2
			con = pool.getConnection();

			// 
			String sql = "select * from board where cCode=?";
			ps = con.prepareStatement(sql);

			ps.setString(1, category);

			// 4
			rs = ps.executeQuery();
			while (rs.next()) {

				int bNo=rs.getInt("bNo");
				String cCode=rs.getString("cCode");
				int sellerNo=rs.getInt("sellerNo");
				String bTitle=rs.getString("bTitle");
				int price=rs.getInt("price");
				String detail=rs.getString("detail");
				int readcount=rs.getInt("readcount");
				Timestamp regdate=rs.getTimestamp("regdate");


				//파일
				String fileName=rs.getString("fileName");
				String originalFilename=rs.getString("originalFilename");
				long fileSize=rs.getLong("fileSize");

				BoardVO vo = new BoardVO(bNo, sellerNo, price, cCode, bTitle, detail, regdate, fileName, fileSize, originalFilename, readcount);
				list.add(vo);
			}

			System.out.println(
					"category 조회 결과 list.size=" + list.size() + ", 매개변수 category=" + category);

			return list;
		} finally {
			pool.dbClose(rs, ps, con);
		}
}
