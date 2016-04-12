<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="jsp.stephan.rekenmachine" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

</body>
</html>
<%

String uitkomst ="";
String foutboodschap ="";

String getal1 = request.getParameter("getal_1");
String getal2 = request.getParameter("getal_2");
String functie = request.getParameter("functie");

rekenmachine rm = new rekenmachine(getal1,getal2,functie);
uitkomst = rm.getuitkomst();
foutboodschap = rm.getfoutboodschap();

%>
<h1>Rekenmachine</h1>


<form action="rek.jsp" method="get">

1ste getal <input name="getal_1" value="<%= uitkomst %>">
2de  getal <input name="getal_2">

       <input type="submit" name="functie" value="+">
       <input type="submit" name="functie" value="-">
       <input type="submit" name="functie" value="X">
       <input type="submit" name="functie" value="/">
       <%= foutboodschap %>
</form>