package com.salgumarket.board.model;

import java.sql.SQLException;
import java.util.List;

//DB작업 이외의 로직을 담는 클래스
/*
 jsp -> DAO
 jsp -> Service -> DAO

 */
public class BoardService {

	private BoardDAO boardDao;

	public BoardService() {
		boardDao = new BoardDAO();
	}

	public int insertBoard(BoardVO vo) throws SQLException {
		return boardDao.insertBoard(vo);
	}

	public int deleteBoard(int no) throws SQLException {
		return boardDao.deleteBoard(no);
	}

	public int updateBoard(BoardVO vo) throws SQLException {
		return boardDao.updateBoard(vo);
	}

	public List<BoardVO> selectAll(String keyword) throws SQLException {
		return boardDao.selectAll(keyword);
	}

	public List<BoardVO> selectByCategory(String category) throws SQLException {
		return boardDao.selectByCategory(category);
	}

	public BoardVO selectByNo(int bno) throws SQLException {
		return boardDao.selectByNo(bno);
	}

	public BoardVO selectByTitle(String bTitle) throws SQLException {
		return boardDao.selectByTitle(bTitle);
	}
}
