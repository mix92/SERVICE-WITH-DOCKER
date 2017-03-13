mkdir -p docker-nginx/html 
cd docker-nginx/html 
vim index.php
-sudo docker run --name php -p 800:800 -d -v /root/docker-nginx/html:/usr/share/nginx/html nginx
/root/docker-nginx/html//  ici se trouve index.php 
/usr/share/nginx/html   // ici se trouve le fichie de configuration de nginx
/root/docker-nginx/html:/usr/share/nginx/html  //permet la redirection de index.php des le fichier de nginx



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

<?php       
try{
 $dbname = "bdd";
$dbh = new PDO('mysql:host=79.137.38.240;dbname= $dbname', 'groupe13', 0000);
   
   foreach($dbh->query('SELECT * from btb') as $row) {
        print_r($row);
    }
    $dbh = null;
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}
?>

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
