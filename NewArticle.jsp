<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--common2 core-->
<%@include file="common2.jsp"%>
		<!--end common2 core -->
		
		<script>
	var VW = [ 'VW', 'passat', 'Golf', 'Touran' ];
	var RENAULT = [ 'RENAULT', 'traffic', 'laguna', 'Modus' ];
	var MERCEDES = [ 'MERCEDES', '190', 'C200', '250' ];
	var manifacturer = [ VW, RENAULT, MERCEDES ];

	var passat = [ 'passat', '2.0 TDI', '2.0 FSI', '1.6 TDI' ]
	var golf = [ 'Golf', '1.4 TSI', '1.2 TSI' ]
	var models = [ passat, golf ];

	function onChangerMod() {

		var selMod = document.getElementById("type");
		selMod.innerHTML = '';
		var sel = document.getElementById("mod");
		var opt = '';
		var selected = sel.options[sel.selectedIndex].value;

		opt = document.createElement('option');
		opt.value = 'Choisir...';
		opt.innerHTML = 'Choisir...';
		selMod.appendChild(opt);

		for (var i = 0; i < models.length; i++) {
			if (models[i][0] == selected) {

				for (var j = 1; j < models[i].length; j++) {
					opt = document.createElement('option');
					opt.value = models[i][j];
					opt.innerHTML = models[i][j];
					selMod.appendChild(opt);
				}
				break;
			}

		}
	}

	function onChanger() {

		var selMod = document.getElementById("mod");
		selMod.innerHTML = '';
		var sel = document.getElementById("manif");
		var opt = '';
		var selected = sel.options[sel.selectedIndex].value;

		opt = document.createElement('option');
		opt.value = 'Choisir...';
		opt.innerHTML = 'Choisir...';
		selMod.appendChild(opt);

		for (var i = 0; i < manifacturer.length; i++) {
			if (manifacturer[i][0] == selected) {

				for (var j = 1; j < manifacturer[i].length; j++) {
					opt = document.createElement('option');
					opt.value = manifacturer[i][j];
					opt.innerHTML = manifacturer[i][j];
					selMod.appendChild(opt);
				}
				break;
			}

		}
	}
</script>
	
	<div class="row" style="z-index: 999;">
		<div class="col gu2">&nbsp;</div>
		<div class="col gu5">
				<form action="NewArticleServlet" method="post" enctype="multipart/form-data" >
								
									
				<div style="margin-bottom: 16px;"></div>
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">pièce: </label>

				 <input type="text" name="piece" size="20px" required="required"></div>
				<br> <br> 
				
								
				<div style="margin-bottom: 16px;"></div>
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Categorie de
					piece: </label>
					<label class="djaj2"> <select
						id="fos_user_registration_form_civilite"
						name="category" required="required">
							<option value="" selected="selected">Choisir...</option>
							<option value="Ailes">Ailes</option>
							<option value="Portes">Portes</option>
							<option value="Pare brise">Pare brise</option>
							<option value="Vitres">Vitres</option>
							<option value="Capots">Capots</option>
							<option value="Poignée">Poignée</option>
							<option value="Pare choc">Pare choc</option>
					</select>
					</label>
					<div style="margin-bottom: 16px;"></div>
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Occasion ou neuve:
					 </label>

				 <label class="djaj2"> <select
						id="fos_user_registration_form_civilite"
						name="oldNew" required="required">
							<option value="" selected="selected">Choisir...</option>
							<option value="old">Occasion</option>
							<option value="New">Neuve</option>							
					</select>
					</label>
					
					
					 <div style="margin-bottom: 16px;"></div>
					<div style="display: inline-block; width: 176px;">
	<label style="margin-bottom: 16px;"
		for="fos_user_registration_form_civilite">Constructeur: </label> 
		
		<label class="djaj2"><select
		id="manif" name="constructeur" onChange="onChanger()">
		<option value="Choisir..." selected="selected">Choisir...</option>
		<option id="5">AUDI</option>

		<option id="16">BMW</option>

		<option id="21">CITROËN</option>

		<option id="35">FIAT</option>

		<option id="36">FORD</option>

		<option id="45">HONDA</option>

		<option id="183">HYUNDAI</option>

		<option id="184">KIA</option>

		<option id="72">MAZDA</option>

		<option id="74">MERCEDES</option>

		<option id="77">MITSUBISHI</option>

		<option id="80">NISSAN</option>

		<option id="84">OPEL</option>

		<option id="88">PEUGEOT</option>

		<option id="93">RENAULT</option>

		<option id="104">SEAT</option>

		<option id="106">SKODA</option>

		<option id="111">TOYOTA</option>

		<option id="120">VOLVO</option>

		<option id="121">VW</option>
	</select> 
	</label>
	<div style="margin-bottom: 16px;"></div>
					<div style="display: inline-block; width: 176px;">
	<label style="margin-bottom: 16px;"
		for="fos_user_registration_form_civilite">Modèle: </label> 
		
		<label class="djaj2"><select	id="mod" name="model" onChange="onChangerMod()">
		<option value="Choisir..." selected="selected">Choisir...</option>
	</select>
	</label>
	<div style="margin-bottom: 16px;"></div>
					<div style="display: inline-block; width: 176px;">
	<label style="margin-bottom: 16px;"
		for="fos_user_registration_form_civilite">Type: </label> 
		
		<label class="djaj2"><select
		id="type" name="type">
		<option value="Choisir..." selected="selected">Choisir...</option>
		</select> 
		</label> 
	
	<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					
					<div style="margin-bottom: 16px;"></div>
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Description: </label>

				 <textarea name="description" rows="5"  required="required"></textarea></div>
				 <div style="margin-bottom: 16px;"></div>
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Prix: </label>

				 <input type="text" name="price" size="20px" required="required"></div>
				<br> <br> 
				
				 <div style="margin-bottom: 16px;"></div>
					<div style="display: inline-block; width: 176px;">
						<label for="fos_user_registration_form_civilite" class="required">Image: </label>

				 <input type="file" name="myFile1" size="20px" id="fileChooser" ></div>
				 <input type="file" name="myFile2" size="20px" id="fileChooser" ></div>
				 <input type="file" name="myFile3" size="20px" id="fileChooser" ></div>
				
<!--                 <input type="submit" value="Télécharger"> -->
				<br> <br> 
					<input type="submit" value="Inserer">			
					
				</form>
			</div>
		</div>
		
	</div>
</body>
</html>