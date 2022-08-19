package com.jsp.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jsp.command.Criteria;
import com.jsp.command.PageMaker;
import com.jsp.dao.NoticeDAO;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService {

	private NoticeDAO noticeDAO;
	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}
	
	@Override
	public Map<String,Object> getNoticeList(Criteria cri) throws SQLException {
		
		Map<String,Object> dataMap =null;
		
		//처리.......
		List<NoticeVO> noticeList = noticeDAO.selectNoticeList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(noticeDAO.selectNoticeListCount(cri));
		
		dataMap = new HashMap<String,Object>();
		dataMap.put("noticeList", noticeList);
		dataMap.put("pageMaker",pageMaker);
		
		return dataMap;
	}

	@Override
	public NoticeVO getNotice(int nNo) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNNo(nNo);
		return notice;
	}
	
	@Override
	public void regist(NoticeVO notice) throws Exception {
		noticeDAO.insertNotice(notice);
		
	}

	@Override
	public void modify(NoticeVO notice) throws Exception {
		noticeDAO.updateNotice(notice);		
	}

	@Override
	public void remove(int nNo) throws Exception {
		noticeDAO.deleteNotice(nNo);		
	}

}
