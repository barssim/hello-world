<%@page import="com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.ArticleBean"%>
<html>
<!--common core-->
<%@include file="commonHead.jsp"%>
<!--end common core -->
	
<br>
<br>
<br>
	
<%
@SuppressWarnings("unchecked")
ArrayList<ArticleBean> myArticlesList = (ArrayList<ArticleBean>) session.getAttribute("selectedArticleList");

%>
<!-- <form action="SelectedArticleServlet"  method="post" > -->
  <table  border="1" >
    <tr  class="row" >  
       
   <td width = "20"> </td>
     <td width="100" >
       
      <img src="images/pare brise.jpg"  alt="Image not found" onerror="this.src='images/carrosserie.jpg';" border=1 width="200" ></img>
       
      </td> 
       <td width = "20"> </td>
       
        <td width="600"  style="vertical-align:top" width="800"  > 
<!--         <a class="link" href="selectedArticle.jsp" > -->
<%--         <h2> <%=aBean.getArticleName()%></h2>         --%>
<%--         <h2><%=aBean.getArticleDescription()%></h2>  </a>   --%>
        
        <span
					style="font-size: 25px; letter-spacing: normal; position: relative; top: 0px;"> <%=myArticlesList.get(0).getArticleName()%></span>
					<br> <span
					style="font-size: 15px; letter-spacing: normal; position: relative; top: 0px;"><%=myArticlesList.get(0).getArticleDescription()%></span><br>

				
        
<%--         <%=aBean.getArticleName()%> --%>
<%--         <%=aBean.getArticleDescription()%> --%>
        
        </td> 
        
       <td width = "20"> </td>
        <td width="20"  style="vertical-align:top"><h3><%=myArticlesList.get(0).getArticlePrice()%> DH</h3>
        </td>
         </tr>
          </table>
        <div id='myDivId'></div>
       
<!-- </form> -->
        
        
            
   
    



</html>

<body>
	<!--header menu-->
	
		<br> <br> 
					<a class="link" href="NewArticle.jsp"><input type="submit" value="Supprimer article"></a>
					
					<a class="link" href="profileUpdate.jsp"><input type="submit" value="Editer article"></a>
<br>
<br>
<br>

</html>