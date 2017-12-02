-module(chapter2).
-export([value_from_prop/2]).

% value_from_prop/2
% Returns the value of a property in a list.
value_from_prop(_, []) -> "Error: Empty List.";
value_from_prop(Key, [{Key, Value} | _]) -> Value;
value_from_prop(Key, [ _ | Tail]) -> value_from_prop(Key, Tail).
