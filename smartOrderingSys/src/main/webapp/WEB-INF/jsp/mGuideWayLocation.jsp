<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="wach_error.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/WEB-INF/include/include-header.jspf"%>

	<!-- Google Map -->
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJgrkT1ePRP78wOOFm18XArOM_HaElurI&sensor=false"></script>
	<script type="text/javascript">
		$(document).on(
				'pageshow',
				function() {
					var myPosition = new google.maps.LatLng(37.489930, 126.723225);
					var mapOptions = {
						center : myPosition,
						zoom : 16,
						mapTypeId : google.maps.MapTypeId.ROADMAP
					};
					var map = new google.maps.Map(document.getElementById("map"),
							mapOptions);
					var marker = new google.maps.Marker({
						position : myPosition,
						map : map
					});
				});
	</script>
	<script src="<c:url value='/js/jquery.mobile-1.4.5.js'/>" charset="utf-8"></script>
	<script src="<c:url value='/js/bootstrap.min.js'/>" charset="utf-8"></script>
</head>

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
					<img src="${ctx}/images/other/tableNumberLogo00.png" width="100%" height="20%">
					<div class="mMain-title" align="center">지도 매장 검색</div><br>
					<!-- Google Map  -->
					<div class="section-contents" align="center">
						<div id="map"></div>
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