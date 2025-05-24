% prolog-family-query.pl

parent(maria, jose). % maria is joses mother
parent(joao, jose). 
parent(joao, ana). 
parent(jose, julia). 
parent(clara, jorge).
parent(jose, íris). 
parent(kelly, jorge).


parent(jorge, clara).
parent(P, jorge).
parent(_P, julia), parent(A, _P)
parent(joao, _P), parent(_P, F)

% rule 1
child(X, Y) :- parent(Y, X).
child(ana, joao)
child(X, jose)
child(jose, Y)

% rule 2
sibling(X, Y) :- child(X, P), child(Y, P), X \= Y.
sibling(maria, joao)
sibling(clara, julia)
sibling(clara, Y)