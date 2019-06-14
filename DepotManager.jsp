<!DOCTYPE html>
<html>
<!--common core-->
<%@include file="commonHead.jsp"%>
<!--end common core -->
<br>
<br>

<!-- 					<a class="link" href="NewArticle.jsp"><input type="submit" value="Inserer nouveau article"></a> -->
					<form action="MyReservedArticlesServlet" method="post"> 
					<a class="link" href="reservedArticles.jsp"><input type="submit" value="Consulter les Articles reservé"></a> 
					</form>
					<a class="link" href="profileUpdate.jsp"><input type="submit" value="Editer votre profile"></a>
<br>
	
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<div class="row"> -->
<!-- 		<div class="col gu2">&nbsp;</div> -->
<!-- 		<div class="loginform col gu5"> -->
		   		   
<%-- 				<h3><%=request.getAttribute("Message")%></h3> --%>
	
	
<!-- 	</div> -->
</html>