% prolog-examples.pl

age(clara, 19).
age(joaquim, 23).
age(anthony, 35).
age(mark, 17).
age(john, 35).

location(clara, marau, rs).
location(joaquim, carazinho, rs).
location(anthony, passo_fundo, rs).
location(mark, lages, sc).
location(john, curitiba, pr).

% rules
gaucho(P) :- location(P, _, rs).
under_age(P) :- age(P, I), I<18.

% queries
age(mark, 17). % true
age(anthony, Age). % 35
age(Name, 35). % anthony, john

location(clara, City, ST). % marau, rs
location(clara, _, ST). % rs
location(Name, _, rs). % clara, joaquim, anthony
location(P, _, sc); location(P, _, pr). % ;OR -> mark, john
location(P, _, sc), location(P, _, pr). % ,AND -> false

gaucho(clara). % true
gaucho(N). % clara, joaquim, anthony

age(P, 35), location(P, _, rs). % anthony, false
age(P, I), I<18. % P=mark, I=17
age(P, _I), _I<18. % mark

under_age(P). % mark
under_age(john). % false


