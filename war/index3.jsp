<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@page import="java.util.Calendar"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
	<head>
			<title>My test page </title> 


	</head> 
	 <%  	
	long oud	=0;
   	long huidig =1;
   	long nieuw =1;
	  for(int i=0; i<100; i++)
	   	{	out.println(""+nieuw);
		  nieuw=oud+huidig;
	   		oud=huidig;
	   		huidig=nieuw;
	   	}
	 %>

	<body> 


	  
	  
	  
	<h2></h2> 
	  
	</body> 
</html>