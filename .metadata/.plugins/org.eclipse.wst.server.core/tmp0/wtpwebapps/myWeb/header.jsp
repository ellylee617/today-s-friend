<%@page import="first.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<hr>
<%= request.getAttribute("msg") %>
<nav>
	<ul>
		<li><a href="#">메뉴1</a></li>
		<li><a href="#">메뉴2</a></li>
		<li><a href="#">메뉴3</a></li>
		<li><a href="#">메뉴4</a></li>
	</ul>
</nav>

<%
Member member = (Member)session.getAttribute("member");
if (member == null){ 
%>
<div>
	<form id="frm">
		<p>아이디: <input type="text" name="id" id="id"></p>
		<p>비밀번호: <input type="password" name="passwd" id="passwd"></p>
		<button type="button" id="btnLogin">로그인하기</button>
		<button type="button" id="btnEnroll" onclick="location.href='view/member/memberInsert.jsp';">회원가입</button>
	</form>
</div>
<%
}  else {
%>
<div>
	<p> <%= member.getId() %>님! <span>등급 : <%= member.getGrade() %></span> </p>
	<button type="button" onclick="#">회원정보보기</button>
	<button type="button" id="btnLogout" onclick="location.href='<%=request.getContextPath()%>/logout';">로그아웃</button>
</div>	
<%	
}
%>




<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$("#btnLogin").click(function() {
		var frm = document.getElementById("frm");
		if($("#id").val().length==0){
			alert("입력된 아이디가 없습니다.")
			return;
		}
		// 유효성 체크 이후	
		//ajax
		$.ajax({
			url : "login",
			type: "post",
			data: { 
			id : $("#id").val(),
			passwd: $("#passwd").val()
			},
			success : function(data){
				console.log(data);
				console.log(data);
				console.log(data);
			},
			error : function(error) {
			alert("전송실패");
			}   // ajax 통신에 문제가 발생하면
		});
		
		
		
		//submit
	/* 	frm.action = "login";
		frm.method = "post";
		frm.submit(); */
	});
	
</script>










