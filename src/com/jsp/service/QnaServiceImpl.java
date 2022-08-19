package com.jsp.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.command.PageMaker;
import com.jsp.dao.NoticeDAO;
import com.jsp.dao.QnaDAO;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;

public class QnaServiceImpl implements QnaService {

	private QnaDAO qnaDAO;
	public void setQnaDAO(QnaDAO qnaDAO) {
		this.qnaDAO = qnaDAO;
	}
	
	@Override
	public Map<String,Object> getQnaList(Criteria cri) throws SQLException {
		
		Map<String,Object> dataMap =null;
		
		//처리.......
		List<QnaVO> qnaList = qnaDAO.selectQnaList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(qnaDAO.selectQnaListCount(cri));
		
		dataMap = new HashMap<String,Object>();
		dataMap.put("qnaList", qnaList);
		dataMap.put("pageMaker",pageMaker);
		
		return dataMap;
	}

	@Override
	public QnaVO getQna(int qno) throws SQLException {
		QnaVO qna = qnaDAO.selectQnaByQNo(qno);
		return qna;
	}
	
	@Override
	public void regist(QnaVO qna) throws Exception {
		qnaDAO.insertQna(qna);
		
	}

	@Override
	public void modify(QnaVO qna) throws Exception {
		qnaDAO.updateQna(qna);		
	}

	@Override
	public void remove(int qno) throws Exception {
		qnaDAO.deleteQna(qno);		
	}

}
