<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/font.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅하기</title>

<style type="text/css">
#img {
	height: 90%;
	width: 90%;
}

p {
	font-family: "GmarketSansMedium";
}
body{
	text-align: center;
}
</style>
</head>
<body>
	<p id="id">
		채팅방 사용 설명서를 받으실 분들은 <a href="채팅설명서.pdf" download>여기</a>를 눌러주세요
	</p>
	<a href='http://m.site.naver.com/0NM4w'> <img id="img"
		src='../../img/QR.png' /></a>

	<!--Start of Tawk.to Script-->
	<script type="text/javascript">
		var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
		(function() {
			var s1 = document.createElement("script"), s0 = document
					.getElementsByTagName("script")[0];
			s1.async = true;
			s1.src = 'https://embed.tawk.to/609cc8c4185beb22b30cce0e/1f5i70g4b';
			s1.charset = 'UTF-8';
			s1.setAttribute('crossorigin', '*');
			s0.parentNode.insertBefore(s1, s0);
		})();
	</script>
	<!--End of Tawk.to Script-->
</body>
</html>
