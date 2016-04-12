<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@page import="java.util.Calendar"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
	<head>
			<title>My test page </title> 

<style>
body{
margin:0;
font-size: 0px;
	}
.zwart{    
	width: 30px;
    height: 30px;
    border: 1px solid black;
    background-color:black;
    display:inline-block;

}
.wit {
	width: 30px;
    height: 30px;
    border: 1px solid black;
    display:inline-block;

	}

</style>
	</head> 
	 
	<body> 

<%  
		for(int i = 0; i < 10; i++){
			for(int j = 0; j < 10; j++){
				if(i% 2 == j%2  ){out.println("<div class='zwart'></div>");}
				else{out.println("<div class='wit'></div>");}
			}				
			out.println("<br>");
			
		}
	 
	 
	 %>
	  
	  
	  
	<h2></h2> 
	  
	</body> 
</html>