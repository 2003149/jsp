<html>
	<head>
			
		<%@page import="jsp.stephan.Auto"%>
		<%@page import="jsp.stephan.AutoLijst"%>
		<%@page import="java.util.*,java.awt.*" %>	
		<title>Autoshop</title>
		<style>
input[type=number] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid #43C6DB;
    border-radius: 4px;
}
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    
}

input[type=submit] {
    width: 100%;
    background-color: #43C6DB;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color:#7ed9e7;
}


#bootstrapnav{
	width:60%;
	border-radius: 5px;
    background-color: #f2f2f2;
    padding:0px;
    margin:auto;

}
#wrapperautolijst{
border-top:3px solid black;
width:60%;
margin:auto;

}

div.autokader {
    float: left;
    margin: 10px 10px 10px 12px;
    width: 240px;
    height: 140px;
    border: 2px solid black;
    border-radius: 10px;
    font-weight: bold;
    text-decoration: none;
    position: relative;
    background:white;
}

div.autokader img {

    width: 140px;
    margin: 1px 1px 45px 6px;
    border-radius: 10px;
    height: 85px;
    border: 2px solid #43C6DB;
    position: absolute;
    bottom: 0;
    left: 0;
}

div.autokader p.merktype {
    color: black;
    margin: 5px;
    border-radius: 22px;
    background-color: #43C6DB;
    text-align: center;
}

div.autokader p.prijs {
    color: black;
    margin-right: 15px;
    margin-top: 80px;
    text-align: right;
    margin-right: 1em;
}

div#autoselectie {
    max-width: 1200px;
}

		</style>
	</head>
	<body>
<% 
//construct
AutoLijst autos = new AutoLijst();
//array aangemaakt met alle auto's er in
ArrayList<Auto> autolijst = autos.getLijst();

int min = 0;
int max = 1000000;
String foutboodschap = "";
%>
<div id="wrapper">
	
	<div id="bootstrapnav">
		<form action="jsptoets.jsp" method="get">
		  min prijs :<br>
		  <input type="number" name="minprijs">
		  <br>
		  max prijs :<br>
		  <input type="number" name="maxprijs">
		  <br>
		  
		    <select name="merk">
			    <option value="alle">Alle</option>
			    <option value="Ford">Ford</option>
			    <option value="Opel">Opel</option>
			    <option value="Subaru">Subaru</option>
			    <option value="Mercedes">Mercedes</option>
			    <option value="Ferrari">Ferrari</option>
				<option value="Citroen">Citroen</option>
			    <option value="Mini">Mini</option>
		  </select>
		  <%= foutboodschap %>
		  <input type="submit" name="Submit">
		</form> 
	</div>
	<div id="wrapperautolijst">
		<%
		//*if of  er op de knop is gedrukt
		if(request.getParameter("Submit") != null){
			// probeert alles in try{} 
			try{
				// if invul leeg is
				if(request.getParameter("minprijs").equals("") || request.getParameter("minprijs")== null) {
					min = 0;
				} else { // zoniet min = van string naar int 
					min = Integer.parseInt(request.getParameter("minprijs")); 
				}
				
				// if invul leeg is
				if(request.getParameter("maxprijs").equals("") || request.getParameter("maxprijs")== null) {
					max = 1000000;
				} else { // zoniet min = van string naar int 
					max = Integer.parseInt(request.getParameter("maxprijs")); 
				}
				// Integer.parseInt(request.getParameter("maxprijs"))
				// debug (niet belangrijk)
				System.out.println("Min = "+min);
				System.out.println("Max = "+max);
				
				// foreach loop door alle autos merken prijzen
				for(Auto auto : autos.getMerkenMinMax(request.getParameter("merk"),min,max)) {
					%>
					<div class="autokader">
		                    <p class="prijs"><%=auto.getPrijsFormat() %></p>
		                    <p class="merktype"><%=auto.getMerk() %> <%=auto.getType() %></p>
		                    <img src=<%=auto.getFoto()%>>
		                </div>
					<%	
				}
				
					
			} 
			//als tekst ipv getallen ingevuld is
			catch(NumberFormatException e) {
				// foutboodschap string is eerst leeg, hier komt er tekst in en dus zichtbaar op de pagina
				foutboodschap = "voer twee getallen in";
				// simpele loop door elke auto zodat de pagina niet leeg blijft
				for(Auto auto : autolijst){
					%>
					<div class="autokader">
		                    <p class="prijs"><%=auto.getPrijsFormat() %></p>
		                    <p class="merktype"><%=auto.getMerk() %> <%=auto.getType() %></p>
		                    <img src=<%=auto.getFoto()%>>
		                </div>
					<%
				}
			}
			
		}
		//*als er niet op de knop gedruktis
		else {
				// simpele loop door elke auto zodat de pagina niet leeg blijft
			for(Auto auto : autolijst){
				%>
				
				<div class="autokader">
		                    <p class="prijs"><%=auto.getPrijsFormat() %></p>
		                    <p class="merktype"><%=auto.getMerk() %> <%=auto.getType() %></p>
		                    <img src=<%=auto.getFoto()%>>
	                </div>
				<%
			}
		}
		%>	
	</div>
</div>
	</body>