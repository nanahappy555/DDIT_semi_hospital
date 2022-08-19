package com.jsp.action.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.service.MemberService;
import com.jsp.service.NoticeService;

public class NoticeDetailAction implements Action {

	private NoticeService noticeService;
	public void setSearchNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/notice/detail";

		String nnoParam = request.getParameter("nno");
		System.out.println(nnoParam);
		int nno = Integer.parseInt(nnoParam);

		try {
			NoticeVO notice = noticeService.getNotice(nno);
			
			request.setAttribute("notice", notice);
			
		}catch(Exception e) {
			e.printStackTrace();
			// ........
			url = "/notice/detail_fail";
			//response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}

		return url;
	}

}
