-module(ueb).
-export([test/0, fib/1, fb/1]).

test() ->
  {ok, [X]} = io:fread("How many Hs?>", "~d"),
  hello(X).

hello(0) -> ok;
hello(N) ->
  io:fwrite("Hello World~n"),
  hello(N-1).


fib(N) -> fib_tr(N, 0, 0, 0).
fib_tr(N, N, _, F) -> F;
fib_tr(N, 0, _, _) -> fib_tr(N, 1, 0, 1);
fib_tr(N, 1, _, _) -> fib_tr(N, 2, 1, 1);
fib_tr(N, Current, X, Y) -> fib_tr(N, Current+1, Y, Y + X).

fb(N) -> fb2(N, 0, 1).
fb2(0, A, _) -> A;
fb2(1, _, B) -> B;
fb2(N, A, B) ->
  fb2(N - 1, B, A + B).
