<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>seconden jsp</title>
	
	</head>
	<body>
	<%  int sec = 60; %>
	 <!-- html code  -->
	<table border="1">
		<thead>
	    <tr>
	        <th>Sec</th>
	        <th>aantal sec</th>
	    </tr>
		</thead>
		<tbody>
		    <tr>
		        <td>min</td>
		        <td> <%= sec/1 %></td>
		    </tr>
		    <tr>
		        <td>uur</td>
		        <td> <%= sec*60 %></td>
		    </tr>
		    <tr>
		        <td>dag</td>
		        <td> <%= sec*60*24 %></td>
		    </tr>
		    <tr>
		        <td>week</td>
		        <td><%= sec*60*24*7 %></td>
		    </tr>
		    <tr>
		        <td>jaar</td>
		        <td><%= sec*60*24*365 %></td>
		    </tr>
		</tbody>
		</table>
	
	</body>
	
</html>