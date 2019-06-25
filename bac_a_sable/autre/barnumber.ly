\version	"2.19"
\relative c'' {
\override Score.BarNumber.break-visibility = ##(#t #t #t)
\set Score.currentBarNumber = #11
% Permit first bar number to be printed
\bar ""
c1 | c | c | c | c |
\break
c1 | c |
\override Score.BarNumber.break-visibility = ##(#f #f #f)
c |
\override Score.BarNumber.break-visibility = ##(#t #t #t)
c | c |
}
