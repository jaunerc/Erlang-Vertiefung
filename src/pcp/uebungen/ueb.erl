-module(ueb).
-export([fib/1, io_fb/0]).


%*************************************************
%   Uebung 03 - Aufgabe 01
%*************************************************
% fib/1
% Returns the n-the fibonacci number.
fib(N) -> fib_tr(N, 0, 1).

% fib_tr/3
% Returns the n-the fibonacci number. This function is tail recursive.
fib_tr(0, A, _) -> A;
fib_tr(1, _, B) -> B;
fib_tr(N, A, B) -> fib_tr(N - 1, B, A + B).

% io_fib/0
% This function reads a number from stdin and returns the n-the fibonacci number.
io_fb() ->
  {ok, [N]} = io:fread("Gib eine Zahl ein: ", "~d"),
  F = fib(N),
  io:fwrite("Die ~p Fibonacci Zahl ist ~p ~n", [N, F]).
