mkdir -p docker-nginx/html 
cd docker-nginx/html 
vim index.html
-sudo docker run --name intranet -p 80:80 -d -v /root/docker-nginx/html:/usr/share/nginx/html nginx
/root/docker-nginx/html//  ici se trouve index.html 
/usr/share/nginx/html   // ici se trouve le fichie de configuration de nginx
/root/docker-nginx/html:/usr/share/nginx/html  //permet la redirection de index.html des le fichier de nginx


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>intranet</title>
    </head>

    <body>
        <h1>Mon super site</h1>
        
        <p>Bonjour et bienvenue sur mon site  intranet.wt13.ephec-ti.be !</p>
        <p>Pour le moment, mon site est un peu <em>vide</em>. Patientez encore un peu !</p>
    </body>
</html>
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
