<?
	include '../Model/model_entraineur.php';

	if(isset($_REQUEST["nom2"],$_REQUEST["prenom2"] )){
		ajouterEntraineur($_REQUEST["nom2"],$_REQUEST["prenom2"]);
	}


?>