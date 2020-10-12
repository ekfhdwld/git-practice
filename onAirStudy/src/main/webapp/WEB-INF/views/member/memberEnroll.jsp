<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="회원등록" name="title"/>
</jsp:include>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/member.css" />
<div id="enroll-container" class="mx-auto text-center">
	<form id="memberEnrollFrm" 
		  action="memberEnroll.do" 
		  method="post">
		<table class="mx-auto">
			<tr>
				<th>ID<span>*</span></th>
				<td>
					<div id="memberId-container">
						<input type="text" 
							   class="form-control" 
							   placeholder="4글자이상"
							   name="memberId" 
							   id="memberId_"
							   required>
						<span class="guide ok">이 아이디는 사용가능합니다.</span>
						<span class="guide error">이 아이디는 사용할 수 없습니다.</span>
						<!-- 0:사용불가, 1:사용가능 -->
						<input type="hidden" id="idValid" value="0" />
					</div>
				</td>
			</tr>
			<tr>
				<th>Password</th>
				<td>
					<input type="password" class="form-control" name="password" id="password_" required>
				</td>
			</tr>
			<tr>
				<th>Password Check</th>
				<td>	
					<input type="password" class="form-control" id="password2" required>
				</td>
			</tr>  
			<tr>
				<th>Username</th>
				<td>	
					<input type="text" class="form-control" name="name" id="name" required>
				</td>
			</tr>
			<tr>
				<th>핸드폰 본인인증</th>
				<td>	
					<input type="date" class="form-control" name="birthday" id="birthday"/>
				</td>
			</tr> 
			<!-- <tr>
				<th>이메일</th>
				<td>	
					<input type="email" class="form-control" placeholder="abc@xyz.com" name="email" id="email">
				</td>
			</tr>
			<tr>
				<th>휴대폰</th>
				<td>	
					<input type="tel" class="form-control" placeholder="(-없이)01012345678" name="phone" id="phone" maxlength="11" required>
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>	
					<input type="text" class="form-control" placeholder="" name="address" id="address">
				</td>
			</tr> 
			<tr>
				<th>성별 </th>
				<td>
					<div class="form-check form-check-inline">
						<input type="radio" class="form-check-input" name="gender" id="gender0" value="M" checked>
						<label  class="form-check-label" for="gender0">남</label>&nbsp;
						<input type="radio" class="form-check-input" name="gender" id="gender1" value="F">
						<label  class="form-check-label" for="gender1">여</label>
					</div>
				</td>
			</tr> -->
			<tr>
				<th>관심카테고리(1개만)</th>
				<td>
					<div class="form-check form-check-inline">
						<input type="checkbox" class="form-check-input" name="category" id="category1" value="자격증"><label class="form-check-label" for="category1">자격증</label>&nbsp;
						<input type="checkbox" class="form-check-input" name="category" id="category2" value="면접"><label class="form-check-label" for="category2">면접</label>&nbsp;
						<input type="checkbox" class="form-check-input" name="category" id="category3" value="입시"><label class="form-check-label" for="category3">입시</label>&nbsp;
						<input type="checkbox" class="form-check-input" name="category" id="category4" value="취미/예술"><label class="form-check-label" for="category4">취미/예술</label>&nbsp;
						<input type="checkbox" class="form-check-input" name="category" id="category5" value="컴퓨터/IT"><label class="form-check-label" for="category5">컴퓨터/IT</label>&nbsp;
						<input type="checkbox" class="form-check-input" name="category" id="category6" value="창업"><label class="form-check-label" for="category6">창업</label>&nbsp;
						<input type="checkbox" class="form-check-input" name="category" id="category7" value="어학"><label class="form-check-label" for="category7">어학</label>&nbsp;
						<input type="checkbox" class="form-check-input" name="category" id="category8" value="기타"><label class="form-check-label" for="category7">기타</label>&nbsp;
					 </div>
				</td>
			</tr>
		</table>
		<input type="submit" value="sign up" >
		<input type="reset" value="전부지우기">
	</form>
</div>
<script>




</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>