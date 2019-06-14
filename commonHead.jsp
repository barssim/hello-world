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
<script src="translate.js"></script>
<script>
	function load() {
		var translate = new Translate();
		var currentLng = location.search.split('language=')[1] ? location.search
				.split('language=')[1]
				: 'fr';

		var attributeName = 'data-tag';
		translate.init(attributeName, currentLng);
		translate.process();
	}
</script>
</head>
<body onload="load()">
	<!--header menu-->
	<div class="canvas gu9" style="background-color: #e6f7ff;">

		<div class="row">
			<div class="col gu3">
				<div class="headerlink">
					<span> <a class="link" href="Apropos.jsp"><label
							data-tag="aPropos"></label></a>&nbsp;&nbsp;&nbsp;&nbsp; <a
						class="link" href="QuiSommesNous.jsp"><label
							data-tag="whoAreWe"></label></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="/solidePortal/index.jsp?language=de"><img
							src="images/German.png" width="10%"></a>&nbsp;&nbsp;&nbsp;&nbsp;


						<a href="/solidePortal/index.jsp?language=fr"><img
							src="images/frensh.jpg" width="10%"></a>
					</span>
				</div>
			</div>
			<div class="col gu2">
				<img src="images/carrosserie.jpg" alt="Piece d'auto occasion"
					width="80%">
			</div>

			<div class="col gu2">
				<div class="headerlink">

					<%
						if (request.getSession().getAttribute("loggedInUser") == null) {
					%>
					<span class="spancenter"> <a class="link" href="login.jsp"><label
							data-tag="connection"></label></a>&nbsp;&nbsp;&nbsp;&nbsp; <a
						class="link" href="register.jsp"><label
							data-tag="registration"></label></a> <a class="link"
						href="/solidePortal/logout.jsp"></a>
					</span>
					<%
						} else {
					%>
					<span class="spanright"><%=request.getSession().getAttribute("loggedInUser")%>&nbsp;&nbsp;&nbsp;&nbsp;
						<form action="LogOutServlet" method="post">
							<input type="submit" value="Deconnection">
						</form> 
						</span>
					<%
						}
					%>

				</div>
			</div>
			<div class="col gu2">
				<img src="images/call_person.png" alt="" width="50%">
			</div>

		</div>
		<!-- end header annonce-->
		<div class="row" style="z-index: 999;">
			<div class="col gu1">&nbsp;</div>
			<div class="col gu6">
				<a href="/solidePortal/index.jsp"> <span
					style="font-size: 35px; letter-spacing: normal; position: relative; top: 0px; text-align: center;">Vente
						de Carrosserie d'automobile</span><br> <span
					style="font-size: 20px; letter-spacing: normal; position: relative; top: 0px;">24h
						sur 24h et pendant toutes les jours de la semaine</span><br>
				<br>
				</a> <span
					style="font-size: 35px; letter-spacing: normal; position: relative; top: 0px; text-align: center;">
					<marquee behavior="alternate" onmouseover="stop()"
						onmouseout="start()">
						<img src="images/aile.jpg" alt="Piece d'auto occasion"> <img
							src="images/pare choc.jpg" alt="Piece d'auto occasion"> <img
							src="images/porte.jpg" alt="Piece d'auto occasion"> <img
							src="images/capot.jpg" alt="Piece d'auto occasion"> <img
							src="images/pare brise.jpg" alt="Piece d'auto occasion"> <img
							src="images/vitre.jpg" alt="Piece d'auto occasion"> <img
							src="images/poignée.jpg" alt="Piece d'auto occasion">

					</marquee>
				</span>
				<div class="col gu2">&nbsp;</div>
			</div>
		</div>

		<br>
		<br>
</html>