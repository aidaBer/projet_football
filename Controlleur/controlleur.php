<?
	include '../Model/model.php';

	if(isset($_REQUEST["joueur"])){
		ajouterJoueur($_REQUEST["nom"],$_REQUEST["prenom"],$_REQUEST["nationalite"],67);
	}

?>