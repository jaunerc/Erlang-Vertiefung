-module(lists).
-export([reverse/1, map/2]).

reverse(L) -> reverse(L,[]).
reverse([] ,R) -> R;
reverse([H|T] ,R) -> reverse(T, [H|R]).

map(F, [H|T]) -> [F(H)|map(F, T)];
map(_, []) -> [].