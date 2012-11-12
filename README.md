# mylilyscore

### Introduction

Je stocke ici les partitions que je ré-écris à l'aide de [LilyPond](http://lilypond.org/) pour mon usage au sein de notre chorale.

Ces fichiers sont disponibles selon la [licence BSD](http://fr.wikipedia.org/wiki/Licence_BSD), c'est à dire que vous pouvez les utiliser comme bon vous semble pour tous les usages possible. Soyez sympa, si vous les utilisez, dites-le moi et envoyez-moi une carte-postale de chez vous.

Toutes les suggestions et les propositions de modifications sont les bienvenues.

### But de ce projet

L'idée est d'avoir un environnement d'écriture de partiton pour la chorale qui les construit systématiquement de la même façon.

## Utilisation

### Mise en œuvre

0.	Téléchargez la dernière version de [LilyPond](http://lilypond.org/) et installez-là sur votre ordinateur ;
0.	Faites un “clône” du dépôt sur votre ordinateur ;
0.	Ouvrir le logiciel et navigez jusqu'au fichier portant le nom du chant suivi du pupitre ex : `kyrie_tenor.ly` ;
0.	Lancez la compilation ;
0.	Profitez de la partition.

### Explication

Dans le dossier principal, il y a les fichiers utilisés par l'ensemble des partitions.

Les dossiers sont organisés par compositeur, puis par chant ou groupe de chant.

Dans un dossier de chant, il y a un fichier par pupitre pour la musque `music_tenor.ly` et un fichier pour les paroles `chant_tenor.ly`. Le fichier général de la partition est `index.ly` et le fichier à compiler est souvent `nom_du_chant_tenor.ly`.