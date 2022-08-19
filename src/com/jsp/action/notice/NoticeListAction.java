package com.jsp.action.notice;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.action.Action;
import com.jsp.command.Criteria;
import com.jsp.dto.MemberVO;
import com.jsp.dto.NoticeVO;
import com.jsp.service.MemberService;
import com.jsp.service.NoticeService;

public class NoticeListAction implements Action {
	
	private NoticeService service;
	public void setNoticeService(NoticeService service) {
		this.service = service;
	}
	
	private MemberService memberService;
	public void setSearchMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	

	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/notice/list";

		String pageParam = request.getParameter("page");
		String perPageNumParam = request.getParameter("perPageNum");
		String keyword = request.getParameter("keyword");
		String searchType = request.getParameter("searchType");		
		
		boolean criFlag = true;
		
		criFlag = criFlag && pageParam !=null
				          && !pageParam.isEmpty()
				          && perPageNumParam !=null
				          && !perPageNumParam.isEmpty();
		
		Criteria cri = new Criteria();
		if(criFlag) {
			try {
				cri.setPage(Integer.parseInt(pageParam));
				cri.setPerPageNum(Integer.parseInt(perPageNumParam));
				cri.setKeyword(keyword);
				cri.setSearchType(searchType);
				
			}catch(Exception e) {
				response.sendError(response.SC_BAD_REQUEST);
				return null;
			}
		}			
		
		try {
			Map<String,Object> dataMap = service.getNoticeList(cri);
			request.setAttribute("dataMap", dataMap);
			
//			List<NoticeVO> noticeList = (List<NoticeVO>) dataMap.get("noticeList");
//			List<String> nameList = null;
//			List<Integer> mcodeList = null;
//			for(NoticeVO notice : noticeList) {
//				int mcode = notice.getMcode();
//				mcodeList.add(mcode);
//				String name = memberService.getName(mcode);
//				nameList.add(name);
//			}
//			request.setAttribute("nameList", nameList);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			url = "/error/500";
		}

		
		// loginUser 확인
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser != null) {
			System.out.println("loginUser의 id : " + loginUser.getId());
		}else {
			System.out.println("loginUser가 null");
		}

		request.setAttribute("member", loginUser);
		
		return url;
	}

}
