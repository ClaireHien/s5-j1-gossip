# THE GOSSIP PROJET 
### Projet THP validant : Jour 4 semaine 5
### Par Claire Tardy

Pour lancer le projet : 

~~~bash
$ git clone git@github.com:ClaireHien/s5-j1-gossip.git
~~~
Se placer dans le dossier puis : 
~~~bash
$ bundle install
$ rails db:create
$ rails db:seed
$ shotgun -p 4567
~~~ 
Vous pouvez ensuite vous placer dans votre naviguateur et lancer la page en local :
~~~bash
http://localhost:4567/
~~~

Au niveau du seed, il a été rempli pour supprimer toutes les données existantes et pour relancer aléatoirement de quoi remplir le gossip project : 
* 10 tags
* 10 cities (+ 1 city "Aucune ville")
* 20 users (+1 user "Anonymous")
* 50 gossips
* 100 comments
* 200 likes

Vous pouvez profiter du gossip project en vous connectant sur **le compte Anonymous** : 
~~~bash
email : anonymous@anonymous.com
MDP : anonymous
~~~
Ce profil est déjà rempli de gossip, commentaires et likes.
Mais vous pouvez également **créer votre propre compte** publier, commenter et liker ce qui vous plait !

***
## En quelques mots...

* **En tant qu'invité**, vous ne pourrez que déhambuler sur les différentes pages (vous serez redirigé vers la page de connexion si vous voulez publier un gossip)

* Vous pouvez également **trier les gossips par catégories** (Tag) en cliquant sur les boutons depuis la page d'accueil ou depuis une page Tag

* Depuis une page city, vous pouvez également avoir un aperçu de tous les **utilisateurs enregistrés dans cette ville** et tous les **gossips qu'ils ont écrit**. 

* Les pages *team* et *contact* depuis la NavBarre sont seulement décoratives. Le formulaire de contact et liens de la team ne mènent à rien (vu que le seed est réinitialisée sur votre PC) 

* Dans la NavBarre, vous avez un lien vers le formulaire d'**inscription** et un autre vers une page pour vous **connecter**. *Je vous laisse faire des essais et créer autant de compte que vous voulez : l'adresse mail est factice!* 

* Une fois connecté, la page Home vous souhaite la bienvenue. Dans la NavBarre, vous avez un lien direct vers **votre propre profil** et un **bouton de deconnexion**. 

* Depuis votre page profil, vous avez **vos informations** mais également une liste (avec un lien) vers **tous les gossips que vous avez liké** et un petit récapitulatif de **tous les gossips que vous avez écrit**

### Vous pouvez alors :
* **Poster de nouveaux gossip**
* **Editer et supprimer vos gossips** (et uniquement les votres ! Sinon vous serez redigez vers une page vous précisant que vous n'avez pas les autorisations)
* **Poster des commentaires**
* **Editer et supprimer vos commentaires** (une fois de plus, uniquement les votres !)
* **Liker et Déliker les gossips** (uniquement depuis la page show de chaque gossip : je n'ai pas réussi à faire autrement) Vous pouvez les liker en cliquant sur le petit *X likes* et si vous recliquez dessus ensuite, cela le "**délike**"

### Voilà ! Vous pouvez vous balader sur le site, créer votre compte et vous amuser à publier, commenter, liker, éditer, supprimer... 
 
***