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

		<!-- Contents -->
		<div data-role="content">
			<div class="section-main"><p>
				<div class="section-title" align="center">
					<h2 class="mMain-title" align="center">HOT MENU</h2>
					<div class="section-contents" align="center">
						<!-- Carousel Slide -->
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>
							
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img src="${ctx}/images/menu/seafood/grid_20130522183050.png" width="100%" height="100%" />
									<div class="carousel-caption">
										<p class="mBusinessText">Western Grilled Seafood Platter<br>웨스턴 그릴드 씨푸드 플래터</p>
									</div>
								</div>
								<div class="item">
									<img src="${ctx}/images/menu/favorites/grid_20140701174106.png" width="100%" height="100%" />
									<div class="carousel-caption">
										<p class="mBusinessText">Kakadu Griller<br>카카두</p>
									</div>
								</div>
								<div class="item">
									<img src="${ctx}/images/menu/pasta/grid_20130523141209.png" width="100%" height="100%" />
									<div class="carousel-caption">
										<p class="mBusinessText">Toowoomba Pasta<br>투움바 파스타</p>
									</div>
								</div>
							</div><br>
							<!-- Controls -->
							<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"><span aria-hidden="true"><imgsrc ="${ctx}/images/icons/carat-l-white.png" /></span></a>
							<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"><span aria-hidden="true"><img src="${ctx}/images/icons/carat-r-white.png" /></span></a>
						</div>
					</div>
					
					<h2 class="mMain-title" align="center">EVENTS</h2>
					<div class="section-contents" align="center">
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
								<li data-target="#carousel-example-generic" data-slide-to="3"></li>
								<li data-target="#carousel-example-generic" data-slide-to="4"></li>
							</ol>
							
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img src="${ctx}/images/other/img_card00.png" height="100%" />
									<div class="carousel-caption">
										<p class="mBusinessText">하나 아웃백 클럽 카드(신용)<br>20%~ 최대 30% 할인</p>
									</div>
								</div>
								<div class="item"><img src="${ctx}/images/other/img_card01.png" height="100%" />
									<div class="carousel-caption">
										<p class="mBusinessText">신한 2030카드<br>20% 현장 할인</p>
									</div>
								</div>
								<div class="item"><img src="${ctx}/images/other/img_card02.png" height="100%" />
									<div class="carousel-caption">
										<p class="mBusinessText">하나 Juliet 카드<br>20% 현장 할인</p>
									</div>
								</div>
								<div class="item"><img src="${ctx}/images/other/img_card03.png" height="100%" />
									<div class="carousel-caption">
										<p class="mBusinessText">하나 EXPAT 플래티늄<br>20% 현장 할인</p>
									</div>
								</div>
								<div class="item">
									<img src="${ctx}/images/other/img_card04.png" height="100%" />
									<div class="carousel-caption">
										<p class="mBusinessText">우리 은행 카드(우리e카드)<br>20% 현장 할인</p>
									</div>
								</div>
							</div><br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Contetns -->

		<!-- Footer -->
		<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
		
	</div>
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
</body>
</html>
