mkdir -p docker-nginx/html 
cd docker-nginx/html 
vim index.html
-sudo docker run --name docker-nginx -p 80:80 -d -v /root/docker-nginx/html:/usr/share/nginx/html nginx
/root/docker-nginx/html//  ici se trouve index.html 
/usr/share/nginx/html   // ici se trouve le fichie de configuration de nginx
/root/docker-nginx/html:/usr/share/nginx/html  //permet la redirection de index.html des le fichier de ngix
