<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

.margin{margin-right:px;}
</style>

<body>
<% 
	int getal = 0;
	boolean click = false;
	String strGetal;
	
	if (request.getParameter("knop") != null) {
	    strGetal = request.getParameter("getal");
	    try {
	        getal = Integer.parseInt(strGetal);
	        click = true;
	    }
	    finally {}
	}
%>

<% if (click) { 
		for (int i = 1; i <= 10; i++) { %>
			<%= i %> x <%= getal %> = <%= i * getal %> <br>
		<% } 
} %>
<form action="index8.jsp" method="get">
	<input type="text" name="getal">
	<div class="knop">
		<input type="submit" name="knop" value="Ok">
	</div>
</form>


</body>

</html>