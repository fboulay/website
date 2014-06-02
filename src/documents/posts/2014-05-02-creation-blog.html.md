---
title: "Le blog de trop ?"
layout: "posts-layout"
tags: "blog,docker,docpad"

ignore: false
---

Malgré les nombreux articles intéressants que je trouve via Twitter et autre services, j'ai eu envie de créer mon blog et de contribuer à mon niveau à ce partage de connaissance.

Commençons par brièvement décririe les choix que j'ai voulu faire techniquement sur ce blog.

# Le blog

Afin de me faciliter la vie en tant qu'unique auteur, j'ai regardé ce qui me semblait le plus pratique. Après avoir perdu beaucoup de temps à administrer un blog Wordpress dans un ancien job, je me suis dit qu'un blog généré statiquement était plus en phase avec mes attentes de développeur.

Les blogs statiques sont nombreux et tous ont leur défenseurs :
* Jekyll
* Octopress
* Pelican
* Docpad
* etc...

J'ai choisi Docpad pour plusieurs raisons. Il est en Javascript contrairement aux autres. Connaissant déjà Javascript, je me sentais plus à l'aise que si j'avais utilisé un blog en Ruby ou Python que je ne maîtrise pas autant.

Docpad est simple d'utilisation et est extensible via des plugins. Plugins qui sont "simples" à coder quant on connaît Javascript (ou coffeescript). Ces plugins permettent d'écrire les posts dans le format de son choix du moment qu'un plugin gère le rendu. Par exemple ce post est écrit en Markdown, mais il aurait pu être écrit en HTML ou en AsciiDoc.

C'est également une bonne occasion de faire du Node.js, puisque Docpad tourne dessus.

# Le déploiement

Un site statique est facile à déployer. Je n'ai eu qu'à créer un repository Git distant sur mon serveur. Un déploiement se résume ensuite à faire un `git push`.

Ensuite un script s'occupe de faire le déploiement sur Docker.

![Blog architecture](/img/2014-05-02-archi-blog.png "Blog architecture")


# Le nom du site.

Je possédais le domaine boulay.eu depuis des années et je n'en faisais pas grand chose. J'ai voulu choisir un nom un peu plus marquant, mais sans succès. Finalement ajouter un sous-domaine `blog` à boulay.eu m'a semble être le plus clair pour indiquer la fonction de du site.

# Les sujets à venir

J'ai plein de sujets en tête, et le temps va probablement me manquer pour écrire tout ce qui me vient par la tête. Je pense écrire sur NIO, Netty, Vert.x, Couchbase, JMH, la programmation de jeux vidéos...

[David Gageot](http://blog.javabien.net/) arrive à faire un post par jour depuis plusieurs mois ; sans aller jusque là, j'espère faire un article intéressant par mois. Ce serait déjà un bel objectif.
Merci à mes premiers lecteurs, et à bientôt !