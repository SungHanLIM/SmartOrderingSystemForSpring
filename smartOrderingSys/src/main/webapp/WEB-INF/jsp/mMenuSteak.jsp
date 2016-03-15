<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="wach_error.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/WEB-INF/include/include-header-mMenuFinder.jspf"%>	
</head>
<body>
	<div data-role="page" id="main">
		<!-- Header -->
		<%@ include file="/WEB-INF/jsp/common/header.jsp"%>

		<!-- 메뉴 선택 이미지 버튼 -->
		<div data-role="content">
			<div class="section-main"><p>
				<div class="section-title" align="center">
				<img src="${ctx}/images/other/tableNumberLogo00.png" width="100%" height="20%">
				<h2 class="mMain-title" align="center">OUTBACK STEAK HOUSE<h2>
					<div class="section-contents" align="center">
						<div data-role="content" align="center" class="menuBanner">
							<a onclick="location.href='/mMenuFinder?category=스테이크'" class="ui-link"><img src="${ctx}/images/other/menuSteak.jpg" width="80%"></a>
							<a onclick="location.href='/mMenuFinder?category=샐러드'" class="ui-link"><img src="${ctx}/images/other/menuSalad.jpg" width="80%"></a>
							<a onclick="location.href='/mMenuFinder?category=오지타이저'" class="ui-link"><img src="${ctx}/images/other/menuOz.jpg" width="80%"></a>
                            <a onclick="location.href='/mMenuFinder?category=씨푸드'" class="ui-link"><img src="${ctx}/images/other/menuSeefood.jpg" width="80%"></a>
                            <a onclick="location.href='/mMenuFinder?category=페이버릿'" class="ui-link"><img src="${ctx}/images/other/menuFavorite.jpg" width="80%"></a>
                            <a onclick="location.href='/mMenuFinder?category=파스타'" class="ui-link"><img src="${ctx}/images/other/menuPasta.jpg" width="80%"></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Contetns :: 메뉴 출력 -->
		<div align="center">
			<div class="section-main">
				<div class="section-title" align="center">
					<h2 class="mMain-title" align="center">MENU</h2><hr>
					<c:choose>
						<c:when test = "${fn:length(list) > 0}">
							<c:forEach items="${list}" var="row">
								<p class="mBusinessBigText" style="margin-bottom: 0px; margin-bottom: 0px; padding-top: 8px;">${row.M_IDX}. ${row.M_NAME}</p>
								<p class="mBusinessMiddleText" style="margin-bottom: 0px;">(${row.M_EN_NAME})</p>
								<img src='${row.M_PICTURE}' width="100%" height="30%" />
								<p class="mBusinessText" style="margin-bottom: 0px;">가격(price) :${row.M_PRICE}원</p>
								<p class="mBusinessText" style="margin-bottom: 0px;">재료(ingredient) :${row.M_COMPOSE}</p>
								<p class="mBusinessText" style="margin-bottom: 0px;">조리시간(Cooking Time) :${row.M_COOK_TIME}분</p><br>
								<a href="javascript:openModal(${row.M_IDX});" class="remodalBtn">자세히보기 </a>
								<!-- 임 ${row.M_CAT_ID} 이걸로 카테고리 나눠야함 -->
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
					<script>
					
					// 		/smartOrderingSys
					
					//$.getJSON('/mMenuFinder.do',
					
					
					function openModal(M_IDX){
						console.log("openModal 실행됨");
						console.log("M_IDX : " + M_IDX);
						///////////
						
						/* $.ajax({
							  dataType: "json",
							  url: '${ctx}/mMenuFinder.do',
							  success: successJson
						});
							
						function successJson() {
							console.log("json성공");
						}
						 */
						
			            $.getJSON('${ctx}/mMenuSteak.do',function(json) {
			            	console.log("json성공");    
			            	var listResult = json.list;
	                        if (listResult.length > 0) {
	                            /* $('#eventName').loadSelect(list);
	                            $("#eventName").val('');
	                            $("#eventName").selectbox(); */
	                        }
	                    }
		            );
						 
						 
						 
						 
						 ///////////
						var menuList = new Array();
						var groupBy = new Array();
						
						var major_information;
						var side_information;
						
						<c:forEach items="${list}" var="row">
							menuList.push("${row.M_IDX}");
							menuList.push("${row.M_NAME}");
							menuList.push("${row.M_EN_NAME}");
							menuList.push("${row.M_PRICE}");
							menuList.push("${row.M_PICTURE}");
							menuList.push("${row.M_COMPOSE}");
							menuList.push("${row.M_COOK_TIME}");
							menuList.push("${row.M_DETAIL}");
							menuList.push("${row.M_CAT_ID}");
						</c:forEach>
						
						
						
						location = "#modal";
					}
					</script>
				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="remodal" data-remodal-id="modal">
			<div class="modal-body" align="center">
				<div class='mMain-title' align='center'>SIDE MENU</div>
			</div>
			<div class="modal-footer"></div><br>
			<a class="remodal-cancel" href="#">Cancel</a>
			<a class="remodal-confirm" href="#">OK</a>
		</div>
		
		<!-- Footer -->
		<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
	</div>
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	</body>
</html>