<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--common core-->
<%@include file="commonHead.jsp"%>
		<!--end common core -->
	<div class="row">
		<div class="col gu2">&nbsp;</div>
		<div class="col gu5">
			<form action="RegisterResult"><br><br>
<%-- 				<h3><%=request.getAttribute("Message")%></h3> --%>
				
                <div style="margin-bottom: 16px;">
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Code envoyé: </label>  
						
				 <input type="text" name="registerCode" size="20px">
				<br> <br> <input type="submit" value="Enregistrer">
			</form>
		</div>
	</div>
</body>
</html>