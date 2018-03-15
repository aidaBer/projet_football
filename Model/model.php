<?php

	function connection()
{
	return new PDO('mysql:host=localhost;dbname=bd;charset=utf8', 'root', 'root');
}


	function ajouterJoueur($nom,$prenom,$nationalite,$equipe){
		$bdd = connection();

	    $result=$bdd->prepare("INSERT INTO `joueur` (`nom_joueur`, `prenom_joueur`, `nationalite_joueur`, `id_equipe`) VALUES (:nom, :prenom, :nationalite,:equipe)");
	    $result->execute(array(
	    	'nom'=>$nom,
	    	'prenom'=>$prenom,
	    	'nationalite'=>$nationalite,
	    	'equipe'=>$equipe
	));
	}


?>