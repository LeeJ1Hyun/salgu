package com.salgumarket.pd.model;

import java.sql.SQLException;
import java.util.List;

//DB작업 이외의 로직을 담는 클래스
/*
 jsp -> DAO
 jsp -> Service -> DAO

 */
public class PdService {

	private PdDAO pdDao;

	public PdService() {
		pdDao = new PdDAO();
	}

	public int insertPd(PdVO vo) throws SQLException {
		return pdDao.insertPd(vo);
	}

	public int deletePd(int no) throws SQLException {
		return pdDao.deletePd(no);
	}

	public int updatePd(PdVO vo) throws SQLException {
		return pdDao.updatePd(vo);
	}

	public List<PdVO> selectAll(String keyword) throws SQLException {
		return pdDao.selectAll(keyword);
	}

	public List<PdVO> selectByCategory(String code) throws SQLException { 
		return pdDao.selectByCategory(code);
	}

	public PdVO selectByNo(int pno) throws SQLException {
		return pdDao.selectByNo(pno);
	}


}
