<?php

	function connection_arbitre()
{
	return new PDO('mysql:host=localhost;dbname=bd;charset=utf8', 'root', 'root');
}

function ajouterArbitre($nom_arbitre,$prenom_arbitre,$poste_arbitre){
		$bdd1 = connection_arbitre();

	    $result1=$bdd1->prepare("INSERT INTO `arbitre` (`nom_arbitre`, `prenom_arbitre`, `enum_poste`) VALUES (:nom1, :prenom1, :poste1)");
	    $result1->execute(array(
	    	'nom1'=>$nom_arbitre,
	    	'prenom1'=>$prenom_arbitre,
	    	'poste1'=>$poste_arbitre ));
}

?>