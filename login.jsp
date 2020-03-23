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
			<form action="LoginServlet" method="post">
			
			<div style="margin-bottom: 16px;">
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite">Nom d'utilisateur: </label>

				 <input type="text" name="username" size="20px" required="required">
				<br> <br> 
				
				<div style="margin-bottom: 16px;">
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite"> Mot de passe:  </label>

				 <input type="PASSWORD" name="password" size="20px" required="required">
				<br> <br> 
			
				<!--       <input type="submit" value="login"> </form> -->
				<input type="submit" value="login" /> <br>
				<a href="passwordReset.jsp" class="link resetlink">Mot de passe oublié ?</a> <br>
				<a href="register.jsp" class="link resetlink">inscrire gratuitement</a>
		</div>
		</form>
	</div>
	</div>

</body>
</html>