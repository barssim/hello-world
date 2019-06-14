<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!--common core-->
<%@include file="commonHead.jsp"%>
		<!--end common core -->
	<br> 

	<div class="row">
		<div class="col gu2">&nbsp;</div>
		<div class="col gu5">
			<h3><label for="fos_user_registration_form_civilite">Veuillez enregistrer svp.</label></h3>
			
			
			<form action="RegisterServlet" method="post">
				

				<div style="margin-bottom: 16px;">
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Civilité
							: </label>
					
					<label class="djaj2"> <select
						id="fos_user_registration_form_civilite"
						name="civilite" required="required">
							<option value="" selected="selected">Choisir...</option>
							<option value="Mr">Mr.</option>
							<option value="Mlle">Mlle</option>
							<option value="Mme">Mme</option>
					</select>
					</label>
				
				<br> <br> 
				<div style="margin-bottom: 16px;">
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Nom d'utilisateur: </label>

				 <input type="text" name="pseudoName" size="20px" required="required">
				<br> <br> 
				
				<div style="margin-bottom: 16px;">
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Mot de pass: </label>
				
				 <input  type="PASSWORD"name="password"
					size="20px" required="required"><br> <br>
				
				<div style="margin-bottom: 16px;">
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Email: </label>
				
				 <input type="email" name="email"
					size="20px" required="required" placeholder="example@mailer.ma"><br> <br>
					
					<div style="margin-bottom: 16px;">
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Téléphone: </label> 
						<input
					type="text" name="MobileNo" size="20px" maxlength="20"><br> <br>
				<br> <br> <input type="submit" value="Enregistrer">
			</form>
		</div>
	</div>
</body>
</html>