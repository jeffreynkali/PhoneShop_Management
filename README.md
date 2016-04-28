# PhoneShop_Management
This project can be used for basic management of any phone shop. The principal available functionalities are:
-customer management(CRUD)
-phones stock inventory

Dans un premier temps je vous expliquerai la procédure d’installation du projet :

1-démarrer le serveur WAMP la version que j’ai utilisé contient MySQL 5.1.30
2- lancer phpMyAdmin qui est l’interface permettant d’administrer graphiquement le SGBD MySQL. Une fois ceçi fait sélectionner l’onglet ‘privilèges’ et modifier l’utilisateur root qui a pour serveur localhost afin qu’il ait un mot de passe qui doit être ‘root’.
3- Une fois ceci fait aller dans l’onglet importer de phpMyAdmin et  cliquer sur le bouton parcourir et parcourrez votre PC jusqu’à trouver le fichier ‘gestion_abonne_vente.sql’ que je vous ai fourni et sélectionner ce dernier et valider l’importation.
Si vous suivez ces instructions à présent votre SGBD MySQL doit contenir une nouvelle base de données appelée gestion_abonne_vente qui correspond au schéma de base de données fourni dans l’énoncé du TP avec comme contraintes supplémentaires les suivantes :
- dans la table ‘abonne’ les champs ‘cni’ et ‘email’ sont UNIQUE c’est-à-dire que 2 abonnés différents ne pourront ni avoir le même numéro CNI  ni le même EMAIL.
-dans la table ‘postetelephone’ le champ ‘numserie’ est UNIQUE
-dans la table ‘puce’ le champ ‘numtelephone’ est UNIQUE

Lorsque cette nouvelle base de données est présente sur votre SGBD et que l’utilisateur root est configuré avec un mot de passe qui doit être ‘root’
Vous pouvez ouvrir le dossier ‘dist’ que je vous ai fourni et dans celui-ci il se trouve un fichier 'gestionAbonneVente.jar’ et il vous suffit de double cliquer sur ce fichier pour utiliser l’application.

 Comme aucune œuvre humaine n’est parfaite si jamais vous rencontrez des bugs lors de l’utilisation de l’application veuillez m’en faire part pour que je les corrige.
 
également la fonction d’impression est également intégré cependant lors de l’impression vu la longueur de la fenêtre à imprimer un format A4 ne peut contenir ce résultat en entier en mode portrait et donc une partie de la fenêtre uniquement sera imprimée et pour remédier à cela veuillez sélectionner le mode paysage au moment de l’impression.

