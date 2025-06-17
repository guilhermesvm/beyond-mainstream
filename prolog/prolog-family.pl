% prolog-family.pl

parent(maria, jose). % maria is joses mother
parent(joao, jose). 
parent(joao, ana). 
parent(jose, julia). 
parent(clara, jorge).
parent(jose, iris). 
parent(kelly, jorge).

% rules
child(X, Y) :- parent(Y, X).
sibling(X, Y) :- child(X, P), child(Y, P), X \= Y.

% queries
parent(jorge, clara).
parent(P, jorge).
parent(_P, julia), parent(A, _P).
parent(joao, _P), parent(_P, F).

child(ana, joao).
child(X, jose).
child(jose, Y).

sibling(maria, joao).
sibling(clara, julia).
sibling(clara, Y).