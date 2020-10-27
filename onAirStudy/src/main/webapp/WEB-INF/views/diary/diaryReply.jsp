<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
div#diary-container{width:60%; margin:0 auto;text-align:center;}
</style>
<div id="memo-container">
    <form id="DReplyFrm" 
    	  action="${pageContext.request.contextPath}/diary/insertDiaryReply.do" 
    	  class="form-inline" 
    	  method="post">
        <input type="text" class="form-control col-sm-6" name="DReply" placeholder="댓글을 적어주세요" required/>&nbsp;
        <input type="password" class="form-control col-sm-2" name="DRpassword" maxlength="4" placeholder="비밀번호" required/>&nbsp;
        <button class="btn btn-outline-success" type="submit" >저장</button>
    </form>
    <br />
    <!-- 메모목록 -->
	<table class="table">
	    <tr>
	      <th>아이디</th>
	      <th>댓글내용</th>
	      <th>날짜</th>
	 <!--      <th>삭제</th> -->
	    </tr>
	    <c:forEach items="${ list }" var="diary">
	    <tr>
	      <td>${ diaryReply.memberId }</td>
	      <td>${ diaryReply.replyContent }</td>
	      <td><fmt:formatDate value="${ diaryReply.replyDate }" pattern="yy/MM/dd HH:mm:ss"/></td>
	     <%--  <td>
	      	<button 
	      		type="button" 
	      		class="btn btn-outline-danger"
	      		onclick="deleteMemo('${ diaryReply.no }')">삭제</button>
	      </td> --%>
		</tr>
	    </c:forEach>
	</table>
</div>


<!-- Modal -->
<!-- 
<div class="modal fade" id="deleteMemoModal" tabindex="-1" role="dialog" aria-labelledby="deleteMemoModalTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
	    <div class="modal-header">
	      <h5 class="modal-title" id="deleteMemoModalTitle">비밀번호를 입력하세요.</h5>
	      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	        <span aria-hidden="true">&times;</span>
	      </button>
	    </div>
	    <form name="memoDelFrm" action="deleteMemo.do" method="post">
		   <div class="modal-body">
		     <input type="hidden" name="no" />
		     <input 
		     	type="password" 
		     	class="form-control" 
		     	name="DRpassword"
				placeholder="비밀번호" 
				required>
		   </div>
		   <div class="modal-footer">
		     <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		     <button type="submit" class="btn btn-danger">삭제</button>
		   </div>
	    </form>
	  </div>
  </div>
</div> -->
<script>


function deleteMemo(no){
	$("#deleteMemoModal").modal()
						 .find("[name=no]").val(no);
}
</script>


