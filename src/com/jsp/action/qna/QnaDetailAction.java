package com.jsp.action.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.dto.QnaVO;
import com.jsp.service.MemberService;
import com.jsp.service.NoticeService;
import com.jsp.service.QnaService;

public class QnaDetailAction implements Action {

	private QnaService qnaService;
	public void setSearchQnaService(QnaService qnaService) {
		this.qnaService = qnaService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/qna/detail";

		String qnoParam = request.getParameter("qno");
		System.out.println(qnoParam);
		int qno = Integer.parseInt(qnoParam);

		try {
			QnaVO qna = qnaService.getQna(qno);
			
			request.setAttribute("qna", qna);
			
		}catch(Exception e) {
			e.printStackTrace();
			// ........
			url = "/qna/detail_fail";
			//response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}

		return url;
	}

}
