\version "2.17.28"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dessine un double encadrement autour du texte.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(define-markup-command (double-box layout props text) (markup?)
	#:properties (
		(inter-box-padding	0.4)
		(box-padding		0.6)
	)
	"Dessine un double encadrement autour du texte."
	(interpret-markup layout props
		(markup 
			#:override `(box-padding . ,inter-box-padding)	#:box
			#:override `(box-padding . ,box-padding)	#:box text
		)
	)
)
