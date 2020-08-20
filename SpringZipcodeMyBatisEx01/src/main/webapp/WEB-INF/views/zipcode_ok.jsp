<%@page import="com.exam.zipcode01.ZipcodeTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<ZipcodeTO> lists = (List<ZipcodeTO>)request.getAttribute("lists");

	StringBuffer html = new StringBuffer();
	
	if(	lists != null ) {
		html.append("<table border='1' width='800'>");
		for( ZipcodeTO to : lists ) {
			html.append("<tr>");
			html.append("<td>" + to.getZipcode() + "</td>" );
			html.append("<td>" + to.getSido() + "</td>" );
			html.append("<td>" + to.getGugun() + "</td>" );
			html.append("<td>" + to.getDong() + "</td>" );
			html.append("<td>" + to.getRi() + "</td>" );
			html.append("<td>" + to.getBunji() + "</td>" );
			html.append("</tr>");
		}
		html.append( "</table>");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=html %>
</body>
</html>