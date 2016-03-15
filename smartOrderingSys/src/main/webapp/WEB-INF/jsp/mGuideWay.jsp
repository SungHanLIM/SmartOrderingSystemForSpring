<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="wach_error.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>

<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />

<body>
	<div data-role="page" id="main">
		<!-- Header -->
		<%@ include file="/WEB-INF/jsp/common/header.jsp"%>

		<!-- Panel Attribute -->
		<%@ include file="/WEB-INF/jsp/common/panel.jsp"%>

		<!-- Contetns -->
		<div data-role="content">
			<div class="section-main">
				<div class="section-title" align="center">
					<img src="../public/images/tableNumberLogo00.png" width="100%" height="20%">
					<h2 class="mMain-title" align="center">지역별 매장 검색</h2>
					<!-- 지역별 매장 선택 메뉴 -->
					<div data-role="navbar" class="ui-navbar" role="navigation">
						<ul class="ui-grid-b">
							<li class="ui-block-a"><a href="/mGuideWay#second" class="ui-link ui-btn ui-icon-grid ui-btn-icon-top">전체</a></li>
							<li class="ui-block-b"><a href="/mGuideWay?classify=incheon" class="ui-link ui-btn ui-icon-home ui-btn-icon-top">인천</a></li>
							<li class="ui-block-c"><a href="/mGuideWay?classify=gungi" class="ui-link ui-btn ui-icon-home ui-btn-icon-top">경기</a></li>
							<li class="ui-block-d"><a href="/mGuideWay?classify=seoul" class="ui-link ui-btn ui-icon-home ui-btn-icon-top">서울</a></li>
						</ul>
					</div>

					<div class="section-contents" align="center">
						<% for (WACH_Define ab : (ArrayList<WACH_Define>) datas) { %>
						<a href="#" class="ui-btn ui-icon-location ui-btn-icon-top"></a>
						<p class="mBusinessMiddleText"><%=ab.getStore_name()%></p>
						<!-- results[i].name  -->
						<p class="mBusinessSmallText"><br></p>
						<%=ab.getStore_location()%>
						<p class="mBusinessText">
						<%=ab.getStore_phoneNum()%>
						</p>
						<% } %>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
</body>
</html>