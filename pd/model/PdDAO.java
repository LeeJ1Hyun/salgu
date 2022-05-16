package com.salgumarket.pd.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.salgumarket.db.ConnectionPoolMgr2;

public class PdDAO {

	private ConnectionPoolMgr2 pool;

	public PdDAO() {
		pool=new ConnectionPoolMgr2();
	}

	public int insertPd(PdVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			con=pool.getConnection();
			String sql="insert into pd(pNo, cCode, sellerNo, pTitle, price, detail, fileName,fileSize,originalFilename) "
					+ "values(pd_seq.nextval, ?,?,?,?,?,?,?,?)";
			/*
			insert into pd(pNo, cCode, sellerNo, pTitle, price, detail, fileName,fileSize,originalFilename) 
			values(pd_seq.nextval, '100',4,'test',1000,'테스트입니다','',0,'');
			 */			
			ps=con.prepareStatement(sql);

			ps.setString(1, vo.getcCode());
			ps.setInt(2, vo.getSellerNo());
			ps.setString(3, vo.getpTitle());
			ps.setInt(4, vo.getPrice());
			ps.setString(5, vo.getDetail());
			ps.setString(6, vo.getFileName());
			ps.setLong(7, vo.getFileSize());
			ps.setString(8, vo.getOriginalFilename());

			int cnt=ps.executeUpdate();
			System.out.println("게시글 등록 결과 cnt="+cnt+", 매개변수 vo="+vo);

			return cnt;
		} finally {
			pool.dbClose(ps, con);
		}
	}


	public int deletePd(int no) throws SQLException { 

		Connection con=null;
		PreparedStatement ps=null;

		try {

			//1,2
			con=pool.getConnection();

			//3
			String sql="delete from pd where pno=?"; //delete from pd where pno=2;
			ps=con.prepareStatement(sql);
			ps.setInt(1, no);

			int cnt=ps.executeUpdate();
			System.out.println("게시글 삭제 결과 cnt="+cnt+". 매개변수 no="+no);
			return cnt;

		} finally {
			pool.dbClose(ps, con);
		} 
	}

	public int updatePd(PdVO vo) throws SQLException { 

		Connection con=null;
		PreparedStatement ps=null;

		try {

			//1,2
			con=pool.getConnection();

			//3
			/*
			update pd set ccode='101',ptitle='테스트2',price=2000,detail='테스트2입니다', 
			fileName='a1.txt', fileSize=10,originalFilename='a.txt' 
			where pno=5;
			 */
			String sql="update pd set ccode=?,pTitle=?,price=?,detail=?";

			if(vo.getFileName()!=null && !vo.getFileName().isEmpty())
				sql+=", fileName=?, fileSize=?,originalFilename=?";

			sql+=" where pno=?";

			ps=con.prepareStatement(sql);

			ps.setString(1, vo.getcCode());
			ps.setString(2, vo.getpTitle());
			ps.setInt(3, vo.getPrice());
			ps.setString(4, vo.getDetail());

			if(vo.getFileName()!=null && !vo.getFileName().isEmpty()){

				ps.setString(5, vo.getFileName());
				ps.setLong(6, vo.getFileSize());
				ps.setString(7, vo.getOriginalFilename());
				ps.setInt(8, vo.getpNo());
			}
			else
				ps.setInt(5, vo.getpNo());

			int cnt=ps.executeUpdate();
			System.out.println("게시글 수정 결과 cnt="+cnt+" 매개변수 vo="+vo);
			return cnt;

		} finally {
			pool.dbClose(ps, con);
		} 
	}

	public List<PdVO> selectAll(String keyword) throws SQLException { //전체조회, 검색


		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<PdVO> list = new ArrayList<PdVO>();
		try {
			// 1,2
			con = pool.getConnection();

			// 3
			String sql = "select * from pd";
			if (keyword != null && !keyword.isEmpty()) {
				sql += " where pTitle like '%' || ? || '%'";
			}
			sql += " order by pNo desc";
			ps = con.prepareStatement(sql);

			if (keyword != null && !keyword.isEmpty()) {
				ps.setString(1, keyword);
			}

			// 4
			rs = ps.executeQuery();
			while (rs.next()) {

				int pNo=rs.getInt("pNo");
				String cCode=rs.getString("cCode");
				int sellerNo=rs.getInt("sellerNo");
				String pTitle=rs.getString("pTitle");
				int price=rs.getInt("price");
				String detail=rs.getString("detail");
				int readcount=rs.getInt("readcount");
				Timestamp regdate=rs.getTimestamp("regdate");


				//파일
				String fileName=rs.getString("fileName");
				String originalFilename=rs.getString("originalFilename");
				long fileSize=rs.getLong("fileSize");

				PdVO vo = new PdVO(pNo, sellerNo, price, cCode, pTitle, detail, regdate, fileName, fileSize, originalFilename, readcount);
				list.add(vo);
			}

			System.out.println(
					"전체 조회 결과 list.size=" + list.size() + ", 매개변수 keyword=" + keyword);

			return list;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}

	public List<PdVO> selectByCategory(String code) throws SQLException { //카테고리로 조회


		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<PdVO> list = new ArrayList<PdVO>();
		try {
			// 1,2
			con = pool.getConnection();

			// 
			String sql = "select * from pd where cCode=?";
			ps = con.prepareStatement(sql);

			ps.setString(1, code);

			// 4
			rs = ps.executeQuery();
			while (rs.next()) {

				int pNo=rs.getInt("pNo");
				String cCode=rs.getString("cCode");
				int sellerNo=rs.getInt("sellerNo");
				String pTitle=rs.getString("pTitle");
				int price=rs.getInt("price");
				String detail=rs.getString("detail");
				int readcount=rs.getInt("readcount");
				Timestamp regdate=rs.getTimestamp("regdate");


				//파일
				String fileName=rs.getString("fileName");
				String originalFilename=rs.getString("originalFilename");
				long fileSize=rs.getLong("fileSize");

				PdVO vo = new PdVO(pNo, sellerNo, price, cCode, pTitle, detail, regdate, fileName, fileSize, originalFilename, readcount);
				list.add(vo);
			}

			System.out.println(
					"category 조회 결과 list.size=" + list.size() + ", 매개변수 code=" + code);

			return list;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}

	public PdVO selectByNo(int pno) throws SQLException { 

		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		PdVO vo=new PdVO();

		try {

			//1,2
			con=pool.getConnection();

			//3
			String sql="select * from pd where pno=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, pno);
			rs=ps.executeQuery();

			if(rs.next()) {
				vo.setpNo(pno);
				vo.setcCode(rs.getString("cCode"));
				vo.setSellerNo(rs.getInt("sellerNo"));
				vo.setpTitle(rs.getString("pTitle"));
				vo.setPrice(rs.getInt("price"));
				vo.setDetail(rs.getString("detail"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				
				//파일
				vo.setFileName(rs.getString("fileName"));
				vo.setFileSize(rs.getLong("fileSize"));
				vo.setOriginalFilename(rs.getString("originalFilename"));

				System.out.println("게시글 상세보기 결과 vo=" + vo + ", 매개변수 pno=" + pno);
			}
			return vo;
		} finally {
			pool.dbClose(rs, ps, con);
		} 
	}


}
