<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.ArticleBean"%>
<html>

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


	<head>
<!--common core-->
<%@include file="commonHead.jsp"%>

		<!--end common core -->
		<style>
tr.cell {
    background-color: rgb(152, 213, 190);
    color: black;
    margin: 20px 0 20px 0;
    border: 1px solid powderblue;
    padding: 20px;   
    
} 
</style>


</head>	
	
<%
@SuppressWarnings("unchecked")
ArrayList<ArticleBean> myArticlesList = (ArrayList<ArticleBean>) request.getAttribute("myArticlesList"); 
    for (ArticleBean aBean: myArticlesList) {    
%>
     
		<table id="tableId" border="1">

			<tr width="100" class="cell" >

<!-- 				<td width="20"></td> -->
				<td class="cell" ><img src=<%=aBean.getArticleImage1()%>
				  alt="Image not found" onerror="this.src='images/carrosserie.jpg';"
					border=1 width="200" ></img></td>
				<td width="20"></td>

				<td width="900" class="cell" style="vertical-align: top" width="800"  >
					<!--         <a class="link" href="selectedArticle.jsp" > --> <%--         <h2> <%=aBean.getArticleName()%></h2>         --%>
					<%--         <h2><%=aBean.getArticleDescription()%></h2>  </a>   --%>
					<%--         <% --%> <%--        %> --%> <!--       <a href="selectedArticle.jsp">  -->
					<span
					style="font-size: 25px; letter-spacing: normal; position: relative; top: 0px;">
						<a href="selectedArticleShopper.jsp?articleNo=<%=aBean.getArticleNo()%>&articleName=<%=aBean.getArticleName()%>&articleDesc=<%=aBean.getArticleDescription()%>&articleImg=<%=aBean.getArticleImage1WithParcedChars()%>&articleImg2=<%=aBean.getArticleImage2WithParcedChars()%>&articleImg3=<%=aBean.getArticleImage3WithParcedChars()%>&articlePrice=<%=aBean.getArticlePrice()%>"><%=aBean.getArticleName()%></a></span><br> <span
					style="font-size: 15px; letter-spacing: normal; position: relative; top: 0px;">
					<%=aBean.getArticleDescription()%></span><br>

					<!-- 				</a> --> <%--         <%=aBean.getArticleName()%> --%> <%--         <%=aBean.getArticleDescription()%> --%>

				</td>

<!-- 				<td width="20"></td> -->
				<td width="100" class="cell" style="vertical-align: top"><h3><%=aBean.getArticlePrice()%>
						DH
					</h3></td>
			</tr>
						
    <!-- 	<h1>__________________________________________________________________________________________</h1> -->
			
		</table>
<% } %>

</body>
</html>