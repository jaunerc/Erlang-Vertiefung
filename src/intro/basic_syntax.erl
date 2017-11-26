-module(basic_syntax).
-export([mirror/1]).

% Atome, Strings, Tupel, Listen
%
% Atome sind beliebige Symbole. Der erste Buchstaben ist klein geschrieben.
%
% Strings werden mit " oder ' Zeichen deklariert.
% Es handelt sich dabei um eine Variante von Listen.
% [97,115,100,102] = "asdf".
%
% Ein Tupel kann beliebige Symbole aufnehmen und besitzt eine feste Länge.
% {a,b,c, "d"}.
%
% Listen können beliebige Symbole aufnehmen und sind bezüglich der Länge variabel.
% [Head | Tail] = [1,2,3].


% Mustererkennung
% 11> {person, {name, "Agent Smith"}}.
% {person,{name,"Agent Smith"}}
% 12> Person = {person, {name, "Agent Smith"}}.
% {person,{name,"Agent Smith"}}
% 13> {person, {name, Name}} = Person.
% {person,{name,"Agent Smith"}}
% 14> Name.
% "Agent Smith"

% Funktionen
% mirror/1
% Gibt den Parameter zurück.
mirror(Anything) -> Anything.