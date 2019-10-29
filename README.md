# THE GOSSIP PROJET 
### Projet THP validant : Jour 1 Semaine 5
### Par Claire Tardy

Projet réalisé jusqu'au point **2.7** (mise en page sommaire par manque de temps...) 

Pour lancer le projet : 

~~~bash
$ git clone git@github.com:ClaireHien/s5-j1-gossip.git
~~~
Se placer dans le dossier puis : 
~~~bash
$ bundle install
$ shotgun -p 4567
~~~ 
Vous pouvez ensuite vous placer dans votre naviguateur et lancer la page en local :
~~~bash
http://localhost:4567/
~~~

***
## En quelques mots...

**HEADER** présent sur toutes les pages avec une petite barre de navigation (home - team - contact) et un lien cliquable sur la bannière pour retourner à l'accueil

**PAGE D'ACCUEIL** (Home) Vous pourrez avoir un aperçu de tous les gossips et des liens redirigeant vers la page de chacun. 

**TEAM** Accessible depuis la barre de navigation : page fixe présentant l'équipe. Vous pouvez cliquer sur les noms des participants pour accéder à leurs profils

**CONTACT** Accessible depuis la barre de navigation : page fixe ayant un formulaire pour contacter l'équipe (formulaire purement décoratif, il ne fonctionne pas) 

**PAGES GOSSIPS** Accessible en cliquant sur le lien du gossip ou par : (le dernier numéro pouvant être remplacé par le numéro du gossip voulu) 
~~~bash 
http://localhost:4567/gossip/3
~~~ 
Où diverses informations du gossip sont inscrits. 
Vous y trouverez également un lien menant à la page du rédacteur du gossip. 

**PAGES PROFIL** Accessible en cliquant sur le lien du profil ou pas : (le dernier numéro pouvant être remplacé par le numéro du gossip voulu) 
~~~bash 
http://localhost:4567/user/8
~~~ 
Où diverses informations de l'user sont inscrits. 

**PAGE SECRETE** Accessible uniquement par : (en remplaçant *texte_au_choix* par le texte que vous voulez !) 
~~~bash
http://localhost:4567/welcome/texte_au_choix
~~~

*** 

Sur ce, bonne déhambulation sur *The Gossip Project*
