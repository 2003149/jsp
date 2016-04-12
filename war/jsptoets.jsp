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
    border-radius: 5px;
    font-weight: bold;
    text-decoration: none;
    position: relative;
    background: -webkit-linear-gradient(right, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* For Safari 5.1 to 6.0 */
    background: -o-linear-gradient(left, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* For Opera 11.1 to 12.0 */
    background: -moz-linear-gradient(left, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* For Firefox 3.6 to 15 */
    background: linear-gradient(to left, rgba(127, 127, 127, 0), rgba(127, 127, 127, 1)); /* Standard syntax (must be last) */

}

div.autokader img {
    width: 130px;
    margin: 10;    height: 80px;
    border: 2px solid #43C6DB;
    position: absolute;
    bottom: 0;
    left: 0;
}

div.autokader p.merktype {
    color: black;
    background-color: #43C6DB;
    text-align: center;
}

div.autokader p.prijs {
    color: black;
    margin-right: 20px;
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
		                    <img src=<%=auto.getFoto()%>>
		                    <p class="merktype"><%=auto.getMerk() %> <%=auto.getType() %></p>
		                    <p class="prijs"><%=auto.getPrijsFormat() %></p>
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
		                    <img src=<%=auto.getFoto()%>>
		                    <p class="merktype"><%=auto.getMerk() %> <%=auto.getType() %></p>
		                    <p class="prijs"><%=auto.getPrijsFormat() %></p>
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
	                    <img src=<%=auto.getFoto()%>>
	                    <p class="merktype"><%=auto.getMerk() %> <%=auto.getType() %></p>
	                    <p class="prijs"><%=auto.getPrijsFormat() %></p>
	                </div>
				<%
			}
		}
		%>	
	</div>
</div>
	</body>