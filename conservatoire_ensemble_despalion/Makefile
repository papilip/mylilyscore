#Makefile pou rcompiler les pièces du dossier

# La commande d'appel à lilypond
LILY_CMD = lilypond --silent

%.pdf %.midi: %.ly
	$(LILY_CMD) $<
	# $(LILY_CMD) $<;			\
	# if test -f "$*.pdf"; then	\
	# 	mkdir -p pdf;		\
	# 	mv "$*.pdf" pdf/;	\
	# fi;				\
	# if test -f "$*.midi"; then	\
	# 	mkdir -p midi;		\
	# 	mv "$*.midi" midi/;	\
	# fi

movepdf:
	mkdir -p pdf &&	mv *.pdf pdf/

scores:	*.pdf	movepdf

all:	scores
