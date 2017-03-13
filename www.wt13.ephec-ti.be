mkdir -p docker-nginx/html 
cd docker-nginx/html 
vim index.html
-sudo docker run --name docker-nginx -p 80:80 -d -v /root/docker-nginx/html:/usr/share/nginx/html nginx
/root/docker-nginx/html//  ici se trouve index.html 
/usr/share/nginx/html   // ici se trouve le fichie de configuration de nginx
/root/docker-nginx/html:/usr/share/nginx/html  //permet la redirection de index.html des le fichier de ngix




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


<!DOCTYPE HTML>
<html>
<ahead>
    <meta charset="utf-8" />
    <title>Présentation de sit www.wt13.ephec-ti.be</title>
</head>

<body>
    <h1>Bienvenue sur le site de www.wt13.ephec-ti.be !</h1>

    <p>Bonjour et bienvenue sur mon site : www.zt13.ephec.be<br />
       woody toys qu'est-ce que c'est ?</p>

    <h2>il s'agit d'une entreprise qui fabrique de mqniere artisanale des jouets en bois</h2>

    <p>OpenClassrooms vous propose des cours (tutoriels) destinés aux débutants : aucune connaissance n'est requise pour lire ces cours !</p>

    <p>Vous pourrez ainsi apprendre, sans rien y connaître auparavant, à créer un site web, à programmer, à construire des mondes en 3D !</p>

    <h2>Une communauté active</h2>

    <p>Vous avez un problème, un élément du cours que vous ne comprenez pas ? Vous avez besoin d'aide pour créer votre site ?<br />
    Rendez-vous sur les forums ! Vous y découvrirez que vous n'êtes pas le seul dans ce cas et vous trouverez très certainement quelqu'un qui vous aidera aimablement à résoudre votre problème.</p>
</body>
</html>

<html>
    <head>
        <meta charset="utf-8" />
        <title>Sauts de ligne</title>
    </head>

    <body>
        <p>Bonjour et bienvenue sur mon site !<br />
        Ceci est mon premier test alors soyez indulgents s'il vous plaît, j'apprends petit à petit comment cela marche.</p>

        <p>Pour l'instant c'est un peu vide, mais revenez dans 2-3 jours quand j'aurai appris un peu plus de choses, je vous assure que vous allez être surpris !</p>
    </body>
</html>

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
