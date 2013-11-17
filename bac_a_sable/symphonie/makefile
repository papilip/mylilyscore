# Le préfixe au nom des fichiers résultants
piece = symphonie
# Détermination du nombre de processeurs
CPU_CORES=`cat /proc/cpuinfo | grep -m1 "cpu cores" | sed s/".*: "//`
# La commande d'appel à lilypond
LILY_CMD = lilypond -ddelete-intermediate-files \
                    -dno-point-and-click -djob-count=$(CPU_CORES)

# Les suffixes utilisés dans ce Makefile
.SUFFIXES: .ly .ily .pdf .midi

# Les fichiers sources et résultants sont recherchés dans les répertoires
# listés dans la variable VPATH.  Ceux-ci sont tous des sous-répertoires
# du répertoire courant (fourni par la variable de GNU make `CURDIR').
VPATH = \
  $(CURDIR)/Partitions \
  $(CURDIR)/PDF \
  $(CURDIR)/Pupitres \
  $(CURDIR)/Notes

# La règle type pour créer un PDF et un MIDI à partir d'un fichier
# source LY.
# Les .pdf résultants iront dans le sous-répertoire "PDF" et les fichiers
# .midi dans le sous-répertoire "MIDI".
%.pdf %.midi: %.ly
        $(LILY_CMD) $<; \       # cette ligne commence par une tabulation
        if test -f "$*.pdf"; then \
            mv "$*.pdf" PDF/; \
        fi; \
        if test -f "$*.midi"; then \
            mv "$*.midi" MIDI/; \
        fi

notes = \
  alto.ily \
  cello.ily \
  cor.ily \
  hautbois.ily \
  violonUn.ily \
  violonDeux.ily

# Les dépendances selon le mouvement.
$(piece)I.pdf: $(piece)I.ly $(notes)
$(piece)II.pdf: $(piece)II.ly $(notes)
$(piece)III.pdf: $(piece)III.ly $(notes)
$(piece)IV.pdf: $(piece)IV.ly $(notes)

# Les dépendances pour la partition intégrale.
$(piece).pdf: $(piece).ly $(notes)

# Les dépendances pour les pupitres.
$(piece)-alto.pdf: $(piece)-alto.ly alto.ily
$(piece)-cello.pdf: $(piece)-cello.ly cello.ily
$(piece)-cor.pdf: $(piece)-cor.ly cor.ily
$(piece)-hautbois.pdf: $(piece)-hautbois.ly hautbois.ily
$(piece)-violonUn.pdf: $(piece)-violonUn.ly violonUn.ily
$(piece)-violonDeux.pdf: $(piece)-violonDeux.ly violonDeux.ily

# Lancer `make score' pour générer l'intégrale des quatre mouvements
# en un seul fichier.
.PHONY: score
score: $(piece).pdf

# Lancer `make parties' pour obtenir tous les pupitres.
# Lancer `make toto.pdf' pour obtenir la partie instrumentale de toto.
# Par exemple : `make symphonie-cello.pdf'.
.PHONY: parties
parties: $(piece)-cello.pdf \
         $(piece)-violonUn.pdf \
         $(piece)-violonDeux.pdf \
         $(piece)-alto.pdf \
         $(piece)-hautbois.pdf \
         $(piece)-cor.pdf

# Lancer `make mouvements' pour générer un fichier séparé pour chacun
# des mouvements.
.PHONY: mouvements
mouvements: $(piece)I.pdf \
            $(piece)II.pdf \
            $(piece)III.pdf \
            $(piece)IV.pdf

all: score parties mouvements

archive:
        tar -cvvf symphonie.tar \    # cette ligne commence par une tabulation
        --exclude=*pdf --exclude=*~ \
        --exclude=*midi --exclude=*.tar \
        ../Symphonie/*
