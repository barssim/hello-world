<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Solide: piece d'automobile</title>
<link rel="stylesheet" href="css_files/style.css" type="text/css">
<link rel="stylesheet" href="css_files/style3.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css_files/style2.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css_files/reset.css" type="text/css">
<link rel="stylesheet" href="css_files/reponse.css" type="text/css">
<link rel="stylesheet" href="css_files/superfish.css" type="text/css">
<link rel="stylesheet" href="css_files/formulaire.css" type="text/css">
<link rel="stylesheet" href="css_files/reset1.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css_files/text1.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css_files/last.css" type="text/css"
	media="all">
<script src='js_files/jquery.min.js'></script>

</head>
<body>
	<!--header menu-->
	<div class="canvas gu9" style="background-color: #e6f7ff;">
		<div class="row">
			<div class="col gu3">
				<div class="headerlink">
					<span> <a class="link" href="Apropos.jsp">A propos</a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="link" href="QuiSommesNous.jsp">Qui sommes-nous ?</a>&nbsp;&nbsp;
					</span>
				</div>
			</div>
			<div class="col gu2"><img src="images/carrosserie.jpg" alt="Piece d'auto occasion"
				width="80%"></div>

			<div class="col gu2">
				<div class="headerlink">
					<span class="spanright"><%=request.getSession().getAttribute("loggedInUser")%>&nbsp;&nbsp;&nbsp;&nbsp;
					 <a class="link" href="/solidePortal/logout.jsp">Deconnection</a>			
					</span>
				</div>
			</div>
			<div class="col gu2"><img src="images/call_person.png" alt=""  width="50%"></div>
			
		</div>
		<!-- end header annonce-->
		<div class="row" style="z-index: 999;">
			<div class="col gu5">

				<a href="/solidePortal/index.jsp"> <span
					style="font-size: 35px; letter-spacing: normal; position: relative; top: 0px;">Vente de Carrosserie d'automobile</span><br> <span
					style="font-size: 20px; letter-spacing: normal; position: relative; top: 0px;">24h
						sur 24h et pendant toutes les jours  de la semaine</span><br>
				</a>

			</div>
		
		</div>
	<br> <br> 
			
			
		

</html>