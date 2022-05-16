package com.salgumarket.reply.model;

import java.sql.SQLException;
import java.util.List;

//DB작업 이외의 로직을 담는 클래스
/*
 jsp -> DAO
 jsp -> Service -> DAO

 */
public class ReplyService {

	private ReplyDAO replyDao;

	public ReplyService() {
		replyDao = new ReplyDAO();
	}

	public int insertReply(ReplyVO vo) throws SQLException {

		return replyDao.insertReply(vo);
	}

	public int deleteReply(int rno) throws SQLException {
		return replyDao.deleteReply(rno);
	}

	public int updateReply(String rContent, int rNo) throws SQLException {
		return replyDao.updateReply(rContent,rNo);
	}

	public List<ReplyVO> selectAllBymNo(int no) throws SQLException {
		return replyDao.selectAllBymNo(no);
	}

	public List<ReplyVO> selectAllBybNo(int no) throws SQLException {
		return replyDao.selectAllBybNo(no);
	}
}
