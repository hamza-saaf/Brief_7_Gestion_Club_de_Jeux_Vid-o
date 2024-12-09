# Brief_7_Gestion_Club_de_Jeux_Video
Modélisation et migration d'une base de donnée relationnelle pour un club de jeux vidéo.
Contexte du projet
Contexte:
Un club de jeux vidéo souhaite numériser la gestion de ses activités. Le club possède une collection de jeux, organise des tournois, et permet à ses membres d’emprunter des jeux ou de participer à des compétitions.
Règles et Exigences:
Membres du Club: Le club souhaite gérer les informations des membres, incluant leur pseudo, leurs coordonnées, et la date à laquelle ils ont rejoint le club. Les membres peuvent souscrire un abonnement qui leur donne accès aux jeux et aux événements du club.
Jeux Vidéo:** **La collection du club contient des jeux vidéo variés, avec des informations sur leur titre, leur studio de développement, leur date de sortie, et leur genre (par exemple, action ou aventure). Certains jeux permettent le multijoueur, tandis que d'autres sont destinés à un seul joueur.
Emprunts:** **Les membres peuvent emprunter des jeux pour une période limitée. Chaque emprunt doit inclure la date à laquelle le jeu a été emprunté et la date prévue pour son retour.
**Tournois **Le club organise des tournois pour certains jeux de sa collection. Les tournois ont un nom, une date, et des récompenses. Plusieurs membres peuvent participer à un même tournoi, et les résultats incluent les scores obtenus et les classements finaux.
Travail à Réaliser:
Votre mission est de modéliser le fonctionnement de ce système en identifiant les différentes entités à prendre en compte ainsi que leurs associations. Ensuite, vous devez réaliser une base de données relationnelle qui répondra aux requêtes suivantes :
Requêtes de Base
Lister les informations de tous les membres (pseudo, e-mail, date d'inscription).
Afficher la liste des jeux disponibles, avec leur titre, genre, et studio de développement.
Trouver les membres qui ont souscrit à un abonnement annuel. Afficher les détails d'un tournoi spécifique à partir de son nom.
Lister les emprunts en cours, incluant le pseudo du membre et le titre du jeu.
Requêtes avec Filtres et Tri
Afficher les jeux sortis après une certaine année, triés par ordre alphabétique.
Trouver les membres qui ont emprunté un jeu, mais ne l'ont pas encore rendu.
Lister les tournois ayant eu lieu entre deux dates spécifiques.
Afficher les membres avec plusieurs emprunts actifs.
Requêtes avec Agrégation
Calculer le nombre total de jeux disponibles par genre.
Trouver le tournoi avec le plus grand nombre de participants.
Afficher le nombre d'emprunts réalisés par chaque membre.
Requêtes avec Jointures
Lister les membres ayant participé à un tournoi, avec leur pseudo, le nom du tournoi, et leur rang final.
Trouver les jeux empruntés par un membre spécifique (via son pseudo).
Lister tous les emprunts, en incluant le pseudo du membre et les informations sur le jeu (titre et studio de développement).
Afficher la liste des membres et le type d'abonnement auquel ils sont associés.
Modalités pédagogiques
Travail : Individuel
Durée : 3 jours.
Date de lancement du brief : 09/12/2024 à 09:30
Date limite de soumission: 11/12/2024 avant 23h59
Modalités d'évaluation
Vous présenterez votre travail pendant 20 minutes : 
 + 10 minutes : Explication du code et principes SQL.
 + 10 minutes : Questions/Réponses.

Livrables
Jour 1 :Planification et  Modélisation 
         - Tableau de planification des tâches (Trello/Jira /...).
         - Créer un diagramme ERD clair et complet, incluant les entités, attributs, relations et cardinalités.
         - Identifier les clés primaires, clés étrangères, et contraintes importantes.
Jour 2 : Implémentation
         - Fournir un fichier SQL (db.sql) contenant :
         - La création des tables et des contraintes.
         - Un jeu de données d’au moins 20 enregistrements répartis sur toutes les tables.
Jour 3 : Manipulation et requêtes
         - Fournir un fichier SQL (query.sql) contenant les requêtes pour :
,        - Manipuler les données.
         - Extraire des informations spécifiques selon des besoins prédéfinis.

Critères de performance
-- Livrable présentable.
-- Bonne documentation.
-- Bonne maitrise et compréhension.
-- Conformité aux Bonnes Pratiques (Normalisation des Tables/ Optimisation des scripts SQL / Contraintes d'intégrité (PK, FK) …).
