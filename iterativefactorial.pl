factorial_iter(N, Result) :-
   factorial_iter_helper(N, 1, Result).

factorial_iter_helper(0, Acc, Acc).
factorial_iter_helper(N, Acc, Result) :-
   N > 0,
   NewAcc is N * Acc,
   NewN is N - 1,
   factorial_iter_helper(NewN, NewAcc, Result).