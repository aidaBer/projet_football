<?
	include '../Model/model_arbitre.php';

	if(isset($_REQUEST["nom1"],$_REQUEST["prenom1"],$_REQUEST["poste1"])){
		ajouterArbitre($_REQUEST["nom1"],$_REQUEST["prenom1"],$_REQUEST["poste1"]);
	}


?>