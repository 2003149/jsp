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

<body><%
int graden ;
int fhar;
String tekst = "";
try {
	graden  = Integer.parseInt(request.getParameter("graden "));
	fhar = Math.round(graden  * 1.8f + 32);
	tekst = graden  + " graden  is " + fhar + " graden fharenheit";
}
catch(NumberFormatException e) {
	tekst = "Geen invoer | Typ getal";
}
finally {
	
}
%>
<h2>graden (NL) naar fahrenheit</h2>
	

	 
	<form action="index10.jsp" method="get">
		<input type="text" name="graden ">
		<input type="submit" value="Ok">
	</form>
	
		<p><%= tekst %></p>
</body>

</html>