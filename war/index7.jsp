<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
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

<body>

<%  

for(int i=1; i< 11; i++){
	out.println(""+i);
	for(int j = 2; j < 11; j++){
		
		out.println(""+(i*j));
	}
%>
		<br>
<%
}				
	

%>


</body>

</html>