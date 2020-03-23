<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!--common core-->
<%@include file="commonHead.jsp"%>
<!--end common core -->

<script>
    var AUDI = ['AUDI',  'A1', 'A2',  'A3', 'A3 limousine',  'S3', 'A4', 'A5', 'A6', 'A7', 'A8', 'Q2', 'Q3', 'Q5', 'Q7', 'Q8' ,'TT', 'R8', 'e-tron']; 
	var VOLKSWAGEN = [ 'VOLKSWAGEN' , 'up' , 'Polo' , 'Golf' , 'Golf GTI' , 'Golf Varian' , ' Golf Sportsvan' , ' Beetle'  , ' Kaefer' , ' Scirocco'  , ' Jetta' , ' CC' , ' Passat' , ' Passat Variant' , ' Eos' , ' Phaeton', ' Touran' , ' Sharan' , ' Tiguan', ' Tiguan Allspace' , ' Touareg' , ' T-Roc', ' Caddy', ' Amarok' , ' Arteon' , ' Multivan' , ' California' , ' Crafter' , ' Transporter' , ' Lupo' , ' XL1 '];
	var RENAULT = [ 'RENAULT','Captur','Clio','Espace','Grand Scénic','Kadjar','Kangoo','Koleos','Laguna','Master','Megane','Modus','Scenic','Talisman','Trafic','Twingo','Vel-satis','Wind','Zoe'];
	var MERCEDES = [ 'MERCEDES', 'A-Klasse' , 'A-Klasse Limousine' , 'B-Klasse' , 'C-Klasse' , 'AMG GT' , 'CL-Klasse' , 'CLA' , 'CLS' , 'E-Klasse' , 'G-Klasse' , 'GL-Klasse' , 'GLA' , 'GLC' , 'GLE' , 'GLK-Klasse' , 'GLS	' , 'R-Klasse' , 'S-Klasse' , 'SL' , '300 SL' , 'SLC' , 'SLK' , 'SLR McLaren' , 'V-Klasse' , 'X-Klasse' , 'M-Klasse' , 'MLC' , 'EQC' , 'Vito' , 'Viano'];
	var FIAT = ['FIAT', 'Punto' , 'Qubo' , '500L' , 'Fullback' , 'Sedici' , '124 Spider' , '500' , 'Bravo' , '500X' , 'Freemont' , 'Tipo' , 'Panda', 'Doblo', 'Ducato' , 'Stilo'];
	var BMW = ['BMW', '1er' , '2er' , '2er Active Tourer' , '2er Gran Tourer' , '3er' , '3er Gran Turismo' , '4er' , '5er' , '6er' , '7er' , '8er' , 'M2' , 'M3' , 'M4' , 'M5' , 'Z3' , 'Z4' , 'Z8' , 'X1' , 'X2' , 'X3' , 'X4' , 'X5' , 'X6'];
	var FORD = ['FORD', 'Ka' , 'Fiesta' , 'Focus' , 'Mondeo' , 'Mustang' , 'GT' , 'Galaxy' , 'S-MAX' , 'B-MAX' , 'C-MAX | Grand C-MAX' , 'Ecosport' , 'Edge' , 'Kuga' , 'Ranger' , 'Transit' , 'Tourneo'];
	var CITROËN = ['CITROËN', 'C-Zero' , 'C1' , 'C3' , 'C3 Picasso' , 'C3 Aircross' , 'DS5' , 'C4' , 'C4 Picasso / Spacetourer' , 'C4 Aircross' , 'C4 Cactus' , 'C5' , 'C5 Aircross' , 'C6' , 'C8' , 'E-Mehari' , 'C-Crosser' , 'Berlingo' , 'Nemo Multispace' , 'Spacetourer'];
	var TOYOTA = ['TOYOTA', 'Auris' , 'Avensis' , 'Aygo' , 'C-HR' , 'Camry' , 'Cellica' , 'Corolla' , 'GT86' , 'Hilux' , 'iQ' , 'Land Cruiser' , 'Mirai' , 'MR2' , 'Previa' , 'Prius' , 'Rav4' , 'Urban Cruiser' , 'Verso' , 'Verso-S' , 'Yaris'];
	var VOLVO = ['VOLVO', 'V40' , 'V50' , 'V60' , 'V70' , 'S40' , 'S60' , 'S80' , 'S90' , 'C30' , 'C70' , 'XC40' , 'XC60' , 'XC70' , 'XC90' , 'Versatillity'	];
	var PEUGEOT = ['PEUGEOT', 'iOn ' , '107' , '108' , '206' , '207' , '208' , '307' , '308' , '406' , '407' , '508' , '607' , '807' , 'RCZ' , '2008' , '3008' , '4007' , '4008' , '5008' , 'Bipper' , 'Partner' , 'Expert' , 'Boxer'];
	var HONDA = ['HONDA', 'Accord' , 'Civic' , 'Civic Tourer' , 'CR-V' , 'CR-Z' , 'HR-V' , 'Insight' , 'Jazz' , 'Jazz Hybrid'];		
	var KIA = ['KIA', 'ceed Sportswagon' , 'Carnival' , 'Sorento' , 'Picanto' , 'Rio' , 'Stonic' , 'Venga' , 'Soul' , 'ceed ' , 'Optima' , 'Carens' , 'Sportage' , 'Soul EV' , 'Concept Cars' , 'Niro' , 'Stinger'];
	var DACIA = ['DACIA', 'Dokker' , 'Duster' , 'Lodgy' , 'Logan' , 'Logan MVC' , 'Sandero'	];
	var OPEL = ['OPEL', 'Adam', 'Adam Rocks' , 'Corsa' , 'Karl' , 'Astra' , 'Astra Sports Tourer' , 'GTC' , 'Cascada' , 'Insignia' , 'Insignia OPC' , 'Ampera-e' , 'Zafira' , 'Mokka X' , 'Crossland X' , 'Grandland X' , 'Combo Life' , 'Agila' , 'Tigra' , 'Monza Concept' , 'Vectra' , 'Antara' , 'Meriva' , 'Movano'];
	var MAZDA = ['MAZDA', 'MX-5' , '2' , '3' , '5' , '6' , 'CX-3' , 'CX-5' , 'CX-7' , 'Rx-8'];
	var SEAT = ['SEAT', 'Mii' , 'Arosa' , 'Salsa' , 'Tango' , 'Bolero' , 'Formula' , 'Cordoba' , 'Exeo' , 'Altea' , 'Ibiza' , 'Leon' , 'Leon Cupra' , 'Leon ST' , 'Toledo' , 'Arona' , 'Tarraco' , 'Ateca' , 'Alhambra'];
	var SKODA = ['SKODA', 'Citigo', 'Fabia' , 'Fabia Combi' , 'Rapid' , 'Rapid Spaceback' , 'Octavia' , 'Superb' , 'Karoq' , 'Kodiaq' , 'Yeti' , 'Roomster' , 'Praktik'];
	var HYUNDAI = ['HYUNDAI' , 'i10' , 'i20' , 'ix20' , 'i30' , 'i30cw' , 'i40' , 'i40cw' , 'Veloster' , 'ix55' , 'Kona' , 'Nexo' , 'Santa Fe' , 'Genesis' , 'Genesis Coupé' , 'ix35 | Tucson' , 'H-1 Travel' , 'H-1 Cargo'];
	var MITSUBISHI = ['MITSUBISHI', 'ASX' , 'Colt' , 'I-MiEV' , 'L200' , 'Lancer' , 'Lancer Evolution' , 'Outlander' , 'Pajero' , 'Space Star'];
	var NISSAN = ['NISSAN', 'Pixo' , 'Micra' , 'Pulsar' , 'Qashqai' , 'Murano' , 'Pathfinder' , 'Navara' , 'Note' , 'Juke' , 'X-Trail' , 'Leaf' , '370Z' , 'GT-R' , 'Maxima' , 'Evalia'];
	var manifacturer = [AUDI, VOLKSWAGEN, RENAULT, MERCEDES, FIAT, BMW, FORD , CITROËN, TOYOTA, VOLVO, PEUGEOT, HONDA, KIA, DACIA, OPEL, MAZDA, SEAT, SKODA, HYUNDAI, MITSUBISHI, NISSAN];
	
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

<label><br> <br></label>
<form action="FiltredArticlesServlet?oldNew=old" method="post">


	<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    
    <label for="fos_user_registration_form_civilite" class="required">Categorie de
					piece: </label>
					<label class="djaj2"> <select
						id="fos_user_registration_form_civilite"
						name="category" >
							<option value="Choisir..." selected="selected">Choisir...</option>
							<option value="Ailes">Ailes</option>
							<option value="Portes">Portes</option>
							<option value="Pare brise">Pare brise</option>
							<option value="Vitres">Vitres</option>
							<option value="Capots">Capots</option>
							<option value="Poigneés">Poigneés</option>
							<option value="Pare choc">Pare choc</option>
					</select>
					</label>
    <br> <br>
    <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	<label style="margin-bottom: 16px;"
		for="fos_user_registration_form_civilite">Constructeur: </label> 
		
		<select
		id="manif" name="constructeur" onChange="onChanger()">
		<option value="Choisir..." selected="selected">Choisir...</option>
		<option id="5">AUDI</option>

		<option id="16">BMW</option>
		<option id="17">DACIA</option>

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

		<option id="121">VOLKSWAGEN</option>
	</select> 
	
	<label>&nbsp;&nbsp;&nbsp;</label> <label style="margin-bottom: 16px;"
		for="fos_user_registration_form_civilite">Modèle: </label> 
		
		<select	id="mod" name="model" onChange="onChangerMod()">
		<option value="Choisir..." selected="selected">Choisir...</option>
	</select>
	
	 <label>&nbsp;&nbsp;&nbsp;</label> <label style="margin-bottom: 16px;"
		for="fos_user_registration_form_civilite">Type: </label> 
		
		<select
		id="type" name="type">
		<option value="Choisir..." selected="selected">Choisir...</option>
		</select> 
		 
	
	<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	<input style="margin-bottom: 16px;" type="submit" value="Chercher">
	
	
	<label>&nbsp;&nbsp;&nbsp;</label>
				
						
	
</form>
<label><br> <br></label>
</html>