% decomposition(N:number, E:number, R:list)
% decomposition(i, i, o)

decomposition(N, E, R) :- E < N,
    onesolution(N, E, R).
decomposition(N, E, R) :- E < N,
    E1 is E + 1,
    decomposition(N, E1, R).

% onesolution(N:number, E:number, R:list)
% onesolution(i, i, o)

onesolution(0, _, []).
onesolution(N, E, [E|R]) :- E =< N,
    N1 is N - E,
    E1 is E + 1,
    onesolution(N1, E1, R).

% main(N:number, R:list)
% main(i, o)

main(N, R) :-
    findall(X, decomposition(N, 1, X), R).