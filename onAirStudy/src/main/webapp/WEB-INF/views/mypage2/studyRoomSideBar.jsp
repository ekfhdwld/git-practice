<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet"	href="${ pageContext.request.contextPath }/resources/css/leejihye.css"	id="theme-stylesheet">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/custom.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/icons-reference/styles.css">
	
	
	<nav class="side-navbar">
		<!-- Sidebar Header-->
		<div class="sidebar-header">
			<div class="message-icon-line">
				<div class="icon icon-mail message" onclick="" style=""></div>
				<div class="messageAlarm">1</div>
			</div>
			<div class="avatar">
				<img
					src="${ pageContext.request.contextPath }/resources/images/avatar-7.jpg"
					alt="...">
				<h3>
					Honggd
					</h3>
					<h5>premium
				</h5>
			</div>
			<div class="d-day-display">
				<hr>
				<span>D - 37</span></br> <span>2020.11.02</span></br> <span>토익시험</span></br>
				<hr>
			</div>
		</div>
		<span class="heading">Menu</span>
		<!-- Sidebar Navidation Menus-->
		<ul class="list-unstyled">
			<li><a href="#">우리 스터디방</a></li>
			<li>
				<a href="#participantsDropdown" aria-expanded="false" data-toggle="collapse">참여인원</a>
				<ul id="participantsDropdown" class="collapse list-unstyled ">
					<li><div class="participantsJH">
							<div class="status"></div>
							<span>sinsa</span>
							<div class="icon icon-mail message"  onclick="" style=""></div>
						</div></li>
					<li><div class="participantsJH">
							<div class="status"></div>
							<span>darong</span>
							<div class="icon icon-mail message"  onclick="" style=""></div>
						</div></li>
				</ul>
			</li>
			<li>
				<a href="#testDropdown" aria-expanded="false" data-toggle="collapse">시험</a>
				<ul id="testDropdown" class="collapse list-unstyled ">
					<li><a href="${ pageContext.request.contextPath}/mypage2/mypage2_question.do">시험문제등록</a></li>
					<li><a href="${ pageContext.request.contextPath}/mypage2/pretest.do">시험보기</a></li>
				</ul>
			</li>
			<li><a href="#">초대하기</a></li>
			<li><a href="#">스케줄러</a></li>
			<li>
				<a href="#applicantsDropdown" aria-expanded="false" data-toggle="collapse">신청인원</a>
				<ul id="applicantsDropdown" class="collapse list-unstyled ">
					<li>
						<div class="applicantsJH">
							<span>이지혜</span>
							<button value="accept" class="btnAcceptJH btnApplicantsJH"
								onclick="alert('멤버아이디 들고 컨트롤러로 갑니다~')">수락</button>
							<button value="reject" class="btnRejectJH btnApplicantsJH"
								onclick="alert('멤버아이디 들고 컨트롤러로 갑니다~')">거절</button>
						</div>
					</li>
					<li>
						<div class="applicantsJH">
							<span>이다롱</span>
							<button value="accept" class="btnAcceptJH btnApplicantsJH"
								onclick="alert('멤버아이디 들고 컨트롤러로 갑니다~')">수락</button>
							<button value="reject" class="btnRejectJH btnApplicantsJH"
								onclick="alert('멤버아이디 들고 컨트롤러로 갑니다~')">거절</button>
						</div>
					</li>
				</ul>
			</li>
		</ul>
	</nav>
	
	
	
	
