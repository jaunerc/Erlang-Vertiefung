-module(math).
-export([fac/1]).
-export([fib/1]).

fac(0) -> 1;                        % Rekursionsbasis
fac(N) -> N * fac(N - 1).           % Rekursionsvorschrift

fib(0) -> 1;                        % Rekursionsbasis
fib(1) -> 1;
fib(N) -> fib(N - 2) + fib(N - 1).  % Rekursionsvorschrift