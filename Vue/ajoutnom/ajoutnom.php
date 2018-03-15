
<?php  
if(isset($_POST['joueurs']))
{

		echo "<h2>",$_POST['joueurs']," </h2> ";
		if(file_exists("ajoutnom.txt") )
		{
			if($id_file=fopen("ajoutnom.txt","a"))
			{
			fwrite($id_file,$_POST['joueurs']."\n"); 
			fclose($id_file);
			}
			else
			{ echo "fichier inaccessible";
			}
		}
		else
		{
		$id_file=fopen("ajoutnom.txt","w");
		fwrite($id_file,$$_POST['joueurs']."\n");
		fclose($id_file);
		}
}

?>
