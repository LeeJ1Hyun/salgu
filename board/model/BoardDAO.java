package com.salgumarket.board.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.salgumarket.board.model.BoardVO;
import com.salgumarket.db.ConnectionPoolMgr2;

public class BoardDAO {

	private ConnectionPoolMgr2 pool;

	public BoardDAO() {
		pool=new ConnectionPoolMgr2();
	}

	public int insertBoard(BoardVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;

		try {
			con=pool.getConnection();
			String sql="insert into board(bNo, cCode, sellerNo, bTitle, price, detail, fileName,fileSize,originalFilename) "
					+ "values(board_seq.nextval, ?,?,?,?,?,?,?,?)";
			/*
			 * insert into board(bNo, cCode, sellerNo, bTitle, price, detail,
			 * fileName,fileSize,originalFilename) values(board_seq.nextval,
			 * '100',1,'테스트',1000,'테스트입니다','1.txt',1,'1_ori.txt');
			 */			
			ps=con.prepareStatement(sql);

			ps.setString(1, vo.getcCode());
			ps.setInt(2, vo.getSellerNo());
			ps.setString(3, vo.getbTitle());
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


	public int deleteBoard(int no) throws SQLException { 

		Connection con=null;
		PreparedStatement ps=null;

		try {

			//1,2
			con=pool.getConnection();

			//3
			String sql="delete from board where bno=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, no);

			int cnt=ps.executeUpdate();
			System.out.println("게시글 삭제 결과 cnt="+cnt+". 매개변수 no="+no);
			return cnt;

		} finally {
			pool.dbClose(ps, con);
		} 
	}

	public int updateBoard(BoardVO vo) throws SQLException { 

		Connection con=null;
		PreparedStatement ps=null;

		try {

			//1,2
			con=pool.getConnection();

			//3
			/*
			update board set ccode='101',btitle='테스트2',price=2000,detail='테스트2입니다', fileName='a1.txt', fileSize=10,originalFilename='a.txt'
			where bno=2; 
			 */
			String sql="update board set ccode=?,btitle=?,price=?,detail=?";

			if(vo.getFileName()!=null && !vo.getFileName().isEmpty())
				sql+=", fileName=?, fileSize=?,originalFilename=?";

			sql+=" where bno=?";

			ps=con.prepareStatement(sql);

			ps.setString(1, vo.getcCode());
			ps.setString(2, vo.getbTitle());
			ps.setInt(3, vo.getPrice());
			ps.setString(4, vo.getDetail());

			if(vo.getFileName()!=null && !vo.getFileName().isEmpty()){

				ps.setString(5, vo.getFileName());
				ps.setLong(6, vo.getFileSize());
				ps.setString(7, vo.getOriginalFilename());
				ps.setInt(8, vo.getbNo());
			}
			else
				ps.setInt(5, vo.getbNo());

			int cnt=ps.executeUpdate();
			System.out.println("게시글 수정 결과 cnt="+cnt+" 매개변수 vo="+vo);
			return cnt;

		} finally {
			pool.dbClose(ps, con);
		} 
	}

	public List<BoardVO> selectAll(String keyword) throws SQLException { //전체조회, 검색


		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		List<BoardVO> list = new ArrayList<BoardVO>();
		try {
			// 1,2
			con = pool.getConnection();

			// 3
			String sql = "select * from board";
			if (keyword != null && !keyword.isEmpty()) {
				sql += " where bTitle like '%' || ? || '%'";
			}
			sql += " order by bno desc";
			ps = con.prepareStatement(sql);

			if (keyword != null && !keyword.isEmpty()) {
				ps.setString(1, keyword);
			}

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
					"전체 조회 결과 list.size=" + list.size() + ", 매개변수 keyword=" + keyword);

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

	public BoardVO selectByNo(int bno) throws SQLException { 

		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		BoardVO vo=new BoardVO();

		try {

			//1,2
			con=pool.getConnection();

			//3
			String sql="select * from board where bno=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, bno);
			rs=ps.executeQuery();

			if(rs.next()) {
				vo.setbNo(bno);
				vo.setcCode(rs.getString("cCode"));
				vo.setSellerNo(rs.getInt("sellerNo"));
				vo.setbTitle(rs.getString("bTitle"));
				vo.setPrice(rs.getInt("price"));
				vo.setDetail(rs.getString("detail"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				//파일
				vo.setFileName(rs.getString(""));
				vo.setFileSize(rs.getInt("fileSize"));
				vo.setOriginalFilename(rs.getString("originalFilename"));

				System.out.println("게시글 상세보기 결과 vo=" + vo + ", 매개변수 bno=" + bno);
			}
			return vo;
		} finally {
			pool.dbClose(rs, ps, con);
		} 
	}

	public BoardVO selectByTitle(String bTitle) throws SQLException { 

		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		BoardVO vo=new BoardVO();

		try {

			//1,2
			con=pool.getConnection();

			//3
			String sql="select * from board where bTitle=?";
			ps=con.prepareStatement(sql);

			ps.setString(1, bTitle);
			rs=ps.executeQuery();

			if(rs.next()) {
				vo.setbNo(rs.getInt("bNo"));
				vo.setcCode(rs.getString("cCode"));
				vo.setSellerNo(rs.getInt("sellerNo"));
				vo.setbTitle(bTitle);
				vo.setPrice(rs.getInt("price"));
				vo.setDetail(rs.getString("detail"));
				vo.setReadcount(rs.getInt("readcount"));
				vo.setRegdate(rs.getTimestamp("regdate"));
				//파일
				vo.setFileName(rs.getString(""));
				vo.setFileSize(rs.getInt("fileSize"));
				vo.setOriginalFilename(rs.getString("originalFilename"));

				System.out.println("게시글 상세보기 결과 vo=" + vo + ", 매개변수 bTitle=" + bTitle);
			}
			return vo;
		} finally {
			pool.dbClose(rs, ps, con);
		} 
	}


}
