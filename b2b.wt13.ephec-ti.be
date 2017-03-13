mkdir -p docker-nginx/html 
cd docker-nginx/html 
vim index.php
-sudo docker run --name php -p 800:800 -d -v /root/docker-nginx/html:/usr/share/nginx/html nginx
/root/docker-nginx/html//  ici se trouve index.php 
/usr/share/nginx/html   // ici se trouve le fichie de configuration de nginx
/root/docker-nginx/html:/usr/share/nginx/html  //permet la redirection de index.php des le fichier de nginx
