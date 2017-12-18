-module(listExample).
-export([get/0, reverse/1, map/2]).

get() -> [1, 3, 3, 7].

reverse(L) -> reverse(L,[]).
reverse([] ,R) -> R;
reverse([H|T] ,R) -> reverse(T, [H|R]).

map(F, [H|T]) -> [F(H)|map(F, T)];
map(_, []) -> [].

%%> L  listExample:get().
%%[1,3,3,7]
%%> RL = listExample:reverse(L).
%%[7,3,3,1]
%%> DL = listExample:map(fun(X) -> X*2 end, L).
%%[2,6,6,14]