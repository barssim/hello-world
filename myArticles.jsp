<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.ArticleBean"%>
<html>
<script>
	function displayRowData(selectedChild) {
		var dv = document.getElementById('myDivId');
		var dv2 = document.getElementById(selectedChild);
// 		while (dv2.firstChild) {
//  			if (!dv.firstChild.isEqualNode(dv2.firstChild)) {
				dv.removeChild(dv.childNodes[selectedChild]);
//  			}
// 		}
//         dv.innerHTML = '';	
//         dv.innerHTML = dv.innerHTML + selectedChild.children[0].innerHTML;
//  		dv.innerHTML = dv.innerHTML + selectedChild.children[1].innerHTML;
//  		dv.innerHTML = dv.innerHTML + selectedChild.children[2].innerHTML;
		// 	   dv.innerHTML += "<br>Name222 : "+yourRow.children[2].innerHTML;
	}



	
</script>
<style>
tr.cell {
    background-color: rgb(152, 213, 190); 
    color: black;
    margin: 20px 0 20px 0;
    border: 1px solid powderblue;
    
} 
</style>
<!--common core-->
<%@include file="commonHead.jsp"%>
<!--end common core -->
<br>
<br>
<a class="link" href="NewArticle.jsp"><input type="submit"
	value="Inserer nouveau article"></a>

<a class="link" href="profileUpdate.jsp"><input type="submit"
	value="Editer votre profile"></a>
<br>
<br>
<br>

<form action="selectedArticleSeller.jsp" method="post">
	<%
		@SuppressWarnings("unchecked")
		ArrayList<ArticleBean> myArticlesList = (ArrayList<ArticleBean>) request.getAttribute("myArticlesList");
		int i = 0;

		for (ArticleBean aBean : myArticlesList) {
	%>

	
		<table id="tableId" border="1">

        
			<tr width="100" >

<!-- 				<td width="20"></td>				 -->
                    <td><img src= <%=aBean.getArticleImage1()%> 
                    alt="Image not found" onerror="this.src='images/carrosserie.jpg';"
					  width="200" ></img></td>
<!-- 				<td width="20"></td> -->

				<td width="900" class="cell" style="vertical-align: top" width="800"  >
					<!--         <a class="link" href="selectedArticle.jsp" > --> <%--         <h2> <%=aBean.getArticleName()%></h2>         --%>
					<%--         <h2><%=aBean.getArticleDescription()%></h2>  </a>   --%>
					<%--         <% --%> <%--        %> --%> <!--       <a href="selectedArticle.jsp">  -->
					<span
					style="font-size: 25px; letter-spacing: normal; position: relative; top: 0px;">
						<a href="selectedArticleSeller.jsp?articleNo=<%=aBean.getArticleNo()%>&articleName=<%=aBean.getArticleName()%>&articleDesc=<%=aBean.getArticleDescription()%>&articleImg=<%=aBean.getArticleImage1WithParcedChars()%>&articleImg2=<%=aBean.getArticleImage2WithParcedChars()%>&articleImg3=<%=aBean.getArticleImage3WithParcedChars()%>&articlePrice=<%=aBean.getArticlePrice()%>"><%=aBean.getArticleName()%></a></span><br> <span
					style="font-size: 15px; letter-spacing: normal; position: relative; top: 0px;"><%=aBean.getArticleDescription()%></span><br>
					

					<!-- 				</a> --> <%--         <%=aBean.getArticleName()%> --%> <%--         <%=aBean.getArticleDescription()%> --%>

				</td>

				<td width="20"></td>
				<td width="100"  style="vertical-align: top"><h3><%=aBean.getArticlePrice()%>
						DH
					</h3></td>
									
				
			</tr>
						
    <!-- 	<h1>__________________________________________________________________________________________</h1> -->
			
		</table>


	<%
		i++;
		}
	%>
	</form>

</html>