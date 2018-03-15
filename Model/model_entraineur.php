<?php

	function connection_entraineur()
{
	return new PDO('mysql:host=localhost;dbname=bd;charset=utf8', 'root', 'root');
}

function ajouterEntraineur($nom_entraineur,$prenom_entraineur){
		$bdd2 = connection_entraineur();

	    $result2=$bdd2->prepare("INSERT INTO `entraineur` (`nom_entraineur`, `prenom_entraineur`) VALUES (:nom2, :prenom2 )");
	    $result2->execute(array(
	    	'nom2'=>$nom_entraineur,
	    	'prenom2'=>$prenom_entraineur ));
	    	
}

?>