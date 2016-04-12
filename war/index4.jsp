<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@page import="java.util.Calendar"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
	<head>
			<title>My test page </title> 


	</head> 
	 <%  

	 int a,b,c;
	 a = 0;
	 b = 1;

	 c = 1;
	
	 for(int i=0; i < 100; i++){
	 out.println(""+c);
	 
	 c = a+b;

		 a=b;		
		 b=c;
	 }
	 %>
	<body> 


	  
	  
	  
	<h2></h2> 
	  
	</body> 
</html>