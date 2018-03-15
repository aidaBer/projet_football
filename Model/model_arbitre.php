<?php

	function connection_arbitre()
{
	return new PDO('mysql:host=localhost;dbname=bd;charset=utf8', 'root', 'root');
}

function ajouterArbitre($nom_arbitre,$prenom_arbitre,$ddn_arbitre,$poste_arbitre){
		$bdd1 = connection_arbitre();

	    $result1=$bdd1->prepare("INSERT INTO `arbitre` (`nom_arbitre`, `prenom_arbitre`, `ddn_arbitre`, `id_equipe`) VALUES (:nom1, :prenom1, :ddn1,:poste1)");
	    $result->execute(array(
	    	'nom1'=>$nom_arbitre,
	    	'prenom1'=>$prenom_arbitre,
	    	'ddn1'=>$ddn_arbitre,
	    	'poste1'=>$poste_arbitre ));
}

?>