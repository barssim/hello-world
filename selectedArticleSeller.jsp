<%@page
	import="com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.ArticleBean"%>
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
<html>

<body>


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
						</form> </span>
					<%
						}
					%>
				</div>
			</div>
			<div class="col gu2">
				<img src="images/call_person.png" alt="" width="50%">
			</div>

<!-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

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
						<img src=<%=request.getParameter("articleImg")%> width="250"
							height="250" onerror="this.src='images/carrosserie.jpg';">
						<img src=<%=request.getParameter("articleImg2")%> width="250"
							height="250" onerror="this.src='images/carrosserie.jpg';">
						<img src=<%=request.getParameter("articleImg3")%> width="250"
							height="250" onerror="this.src='images/carrosserie.jpg';">

					</marquee>
				</span>
				<div class="col gu2">&nbsp;</div>
			</div>
		</div>

		<br>
		<br>
	

<!-- <form action="SelectedArticleServlet"  method="post" > -->

					
  <table  border="1" >
    <tr  class="row" >  
       
   <td width = "20"> </td>
     <td width="100" >
       
      <img src=<%=request.getParameter("articleImg")%>  alt="Image not found" onerror="this.src='images/carrosserie.jpg';" border=1 width="200" ></img>
       
      </td> 
       <td width = "20"> </td>
       
        <td width="600"  style="vertical-align:top" width="800"  > 
<!--         <a class="link" href="selectedArticle.jsp" > -->
<%--         <h2> <%=aBean.getArticleName()%></h2>         --%>
<%--         <h2><%=aBean.getArticleDescription()%></h2>  </a>   --%>
        
        <span
					style="font-size: 25px; letter-spacing: normal; position: relative; top: 0px;"><b><%=request.getParameter("articleName")%></b></span>
					 <br><span
					style="font-size: 15px; letter-spacing: normal; position: relative; top: 0px;"><b>ArticleNo: <%=request.getParameter("articleNo")%></b></span><br>
					<br><br><br> <span
					style="font-size: 15px; letter-spacing: normal; position: relative; top: 0px;"><b><%=request.getParameter("articleDesc")%></b></span><br>

				
        
<%--         <%=aBean.getArticleName()%> --%>
<%--         <%=aBean.getArticleDescription()%> --%>
        
        </td> 
        
        <td width="100" class="cell" style="vertical-align: top"><h3><%=request.getParameter("articlePrice")%>
						DH
					</h3>
        </td>
         </tr>
       
  
          </table>
<br></br>	
 <form action="RemoveArticleServlet" method="post">  
        <%
		   String artNo = request.getParameter("articleNo");
		   session.setAttribute("articleNo", artNo);
		   %>
		<input  type="submit" value="Supprimer">
		</form>
		<br>
<!-- 		<form action="articleUpdate.jsp" method="post">  -->
		   <input type="submit" value="Editer" onclick="location.href='articleUpdate.jsp?articleNo=<%=request.getParameter("articleNo")%>&articleName=<%=request.getParameter("articleName")%>&articleDesc=<%=request.getParameter("articleDesc")%>&articlePrice=<%=request.getParameter("articlePrice")%>'"><br>
<!-- 					</form> -->
					<br></br>	
				
</html>