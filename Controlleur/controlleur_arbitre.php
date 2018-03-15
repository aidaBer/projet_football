<?
	include '../Model/model_arbitre.php';

	if(isset($_REQUEST["arbitre"])){
		ajouterArbitre($_REQUEST["nom1"],$_REQUEST["prenom1"],$_REQUEST["ddn1"],$_REQUEST["poste1"]);
	}

?>