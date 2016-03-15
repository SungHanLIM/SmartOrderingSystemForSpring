<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" errorPage="wach_error.jsp"
	import="wach.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="gb" class="wach.WACH_Bean" />
<jsp:useBean id="wach" class="wach.WACH_Define" />
<jsp:setProperty name="wach" property="*" />
<%
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");
	// 파라미터에 따른 요청 처리

	// 메인 페이지 이동
	if (action.equals("mMain")) {
		pageContext.forward("mMain.jsp");
	}

	// 메뉴 페이지 이동
	else if (action.equals("mMenuFinder")) {
		ArrayList<WACH_Define> datas = gb.getMenu();
		request.setAttribute("datas", datas);
		ArrayList<SideMenu> side_datas = gb.getSideMenu();
		request.setAttribute("side_datas", side_datas);
		pageContext.forward("mMenuFinder.jsp");
	}

	// 영업안내 페이지 이동
	else if (action.equals("mBusiness")) {
		pageContext.forward("mBusiness.jsp");
	}

	// 길 안내 Start 페이지 이동
	else if (action.equals("mGuideWayStart")) {
		pageContext.forward("mGuideWayStart.jsp");
	}

	// 길 안내 지역별 안내 페이지 이동
	else if (action.equals("mGuideWay")) {
		ArrayList<WACH_Define> datas = gb.getStores();
		request.setAttribute("datas", datas);
		pageContext.forward("mGuideWay.jsp");
	}

	// 길 안내 지도 안내 페이지 이동
	else if (action.equals("mGuideWayLocation")) {
		pageContext.forward("mGuideWayLocation.jsp");
	}
	// 프로젝트 정보 페이지 이동
	else if (action.equals("mProject")) {
		pageContext.forward("mProject.jsp");
	}
%>