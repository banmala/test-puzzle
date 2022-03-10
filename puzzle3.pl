do_list(N, L):- findall(Num, between(0, N, Num), L).

do_list(2,L).

not_in(1,0).
not_in(4,1).
not_in(7,2).

in(1,0).
in(8,1).
in(9,2).

not_in(9,0).
not_in(6,1).
not_in(4,2).

wrong(5).
wrong(2).
wrong(3).

not_in(2,0).
not_in(8,1).
not_in(6,2).

wrong(X):- not_in(X,Y),in(X,Y).


correct(1):- wrong(7),wrong(4).
correct(4):- wrong(1),wrong(7).
correct(7):- wrong(4),wrong(1).

correct(9):- wrong(1),wrong(8).
correct(1):- wrong(9),wrong(8).
correct(8):- wrong(9),wrong(1).

correct(6):- wrong(2),wrong(8).
correct(2):- wrong(6),wrong(8).
correct(8):- wrong(2),wrong(6).

wrong(9):- correct(6),correct(4).
wrong(4):- correct(6),correct(9).
wrong(6):- correct(4),correct(9).

in(X,0):- not_in(X,1),not_in(X,2).
in(X,1):- not_in(X,0),not_in(X,2).
in(X,2):- not_in(X,0),not_in(X,1).

place_in(X,Y):- correct(X),in(X,Y).
placed(X):- correct(X),in(X,Y).
cannot_place_in(Y):- correct(X),in(X,Y).
can_place_in(0):-cannot_place_in(2),cannot_place_in(1).
can_place_in(1):-cannot_place_in(0),cannot_place_in(2).
can_place_in(2):-cannot_place_in(1),cannot_place_in(0).

place_in(X,Y):- correct(X),can_place_in(Y),place_in(A,Z),(A\=X).