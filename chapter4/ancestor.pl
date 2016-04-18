%Kitapta bulunan ancestor
ancestor(X,Y):-!,parent(X,Z),ancestor(Z,Y).
ancestor(X,X).
parent(amy,bob).
% Derste yazılan ancestor1
ancestor1(X,Y):-parent1(X,Y).
ancestor1(X,Y):-parent1(X,Z),ancestor1(Z,Y).
parent1(amy,bob).
parent1(bob,john).

gcd(U,0,U).
gcd(U,V,W):-not(V=0),R is U mod V,gcd(V,R,W).

cons(X,Y,[X|Y]).

append([],X,X).
append([A|B],Y,[A|W]):-append(B,Y,W).

reverse([],[]).
reverse([H|T],L):-reverse(T,L1),append(L1,[H],L).