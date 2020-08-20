<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload=function(){
		document.getElementById('btn').onclick =function(){
		//alert('test');
		if(document.frm.dong.value.trim().length < 2 ){
			alert( '동이름을 2자이상 입력하셔야합니다.');
			return false;
		}
		document.frm.submit();
		};
	};

</script>
</head>
<body>
<form action="./zipcode_ok.do" method="post" name="frm">
동이름 <input type="text" name="dong" size="40" maxlength="4" placeholder="동이름입력"/>
<input type="button" id="btn" value="동이름 검색" />
</body>
</html>