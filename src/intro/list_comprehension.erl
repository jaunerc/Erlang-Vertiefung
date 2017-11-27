-module(list_comprehension).
-export([map/2]).

% Ziel: Alle Werte einer Liste verdoppeln.
% 1)
%   Num = [1,2,3].
%   Double = fun(X) -> X * 2 end.
%   lists:map(Double, Num).
%   -> [2,4,6].
%
% 2) Jetzt mit Listenkomprehensionen auf einer Zeile ;-)
%   [Double(X) || X <- Num].

% map/2
% Kompaktes map
map(Func, List) -> [Func(X) || X <- List].