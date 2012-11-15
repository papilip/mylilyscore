# mylilyscore

### Introduction et but recherché

Je stocke ici les partitions que je ré-écris à l'aide de [LilyPond](http://lilypond.org/) pour mon usage au sein de notre chorale.

L'idée est d'avoir un environnement d'écriture de partitions pour mon pupitre, __les ténors__, et que l'ensemble des partitions construites se ressemble. Je ne cherche pas la beauté, mais l'efficacité : une partition sur deux pages bien tassée plutôt que sur trois bien aérée.

### Modification

Toutes les suggestions et les propositions de modifications sont les bienvenues. N'hésitez pas à faire une copie du projet _(“fork”)_ et à me soummetre vos modifications _(pull request)_.

### Licence

Ces fichiers sont disponibles selon la [WTFPL](http://sam.zoy.org/wtfpl/COPYING) - _Do What The Fuck You Want To Public License_, c'est à dire que vous pouvez les utiliser comme bon vous semble pour tous les usages possible. La version française de cette licence est vraiment trop grossière, je prefère la version anglaise. Le texte de la licence est disponible dans le fichier ``COPYING`` [ici](./COPYING).

### Utilisation

Soyez sympa, si vous utilisez mon travail, dites-le moi et envoyez-moi une carte-postale de chez vous, je vous donnerai mon adresse par courriel.

## Utilisation

### Mise en œuvre

0.	Téléchargez la dernière version de [LilyPond](http://lilypond.org/download.fr.html) et installez-là sur votre ordinateur ;
0.	Faites un “clône” du dépôt sur votre ordinateur ;

		$ git clone git://github.com/papilip/mylilyscore.git

0.	Ouvrir le logiciel et navigez jusqu'au fichier portant le nom du chant suivi du pupitre ex : `kyrie_tenor.ly` ;
0.	Lancez la compilation ;
0.	Profitez de la partition.

### Explications

Dans le dossier principal, il y a les fichiers utilisés par l'ensemble des partitions.

Les dossiers sont organisés par compositeur, puis par chant ou groupe de chant.

Dans un dossier de chant, il y a un fichier par pupitre pour la musque `music_tenor.ly` et un fichier pour les paroles `chant_tenor.ly`. Le fichier général de la partition est `index.ly` et le fichier à compiler est souvent `nom_du_chant_tenor.ly`.