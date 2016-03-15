<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="wach_error.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/WEB-INF/include/include-header.jspf"%>
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
					<div class="section-contents" align="center">
						<img src="${ctx}/images/other/tableNumberLogo00.png" width="100%" height="20%">
						<a class="ui-link" data-role="button" data-icon="location" data-iconpos="top" href="#this" id="mGuideWay">지역별 매장 검색</a>
						<a class="ui-link" data-role="button" data-icon="location" data-iconpos="top" href="#this" id="mGuideWayLocation">지도 매장 검색</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
		
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#mGuideWay").on("click", function(e) {
			e.preventDefault();
			fn_mGuideWay();
		});
		$("#mGuideWayLocation").on("click", function(e) {
			e.preventDefault();
			fn_mGuideWayLocation();
		});
	});

	function fn_mGuideWay() {
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/mGuideWay.do' />");
		comSubmit.submit();
	}
	
	function fn_mGuideWayLocation() {
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/mGuideWayLocation.do' />");
		comSubmit.submit();
	}
	</script>
</body>
</html>