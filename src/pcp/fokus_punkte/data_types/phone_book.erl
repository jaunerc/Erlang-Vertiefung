-module(phone_book).
-export([get/0, look/2, add/3, delete/2]).

get() -> #{adam => 4711, eva => 4712}.

look(Name, Dir) ->
  case maps:is_key(Name, Dir) of
    true -> maps:get(Name, Dir);
    false -> io:format("error.")
  end.

add(Name, Number, Dir) ->
  case maps:is_key(Name, Dir) of
    true -> io:format("error.");
    false -> maps:put(Name, Number, Dir)
  end.

delete(Name, Dir) ->
  case maps:is_key(Name, Dir) of
    true -> maps:remove(Name, Dir);
    false -> io:format("error.")
  end.

%%> B1 = phone_book:get().
%%#{adam => 4711,eva => 4712}
%%> phone_book:look(adam, B1).
%%4711
%%> phone_book:look(erna, B1).
%%error.ok
%%> B2 = phone_book:add(erna, 1324, B1).
%%#{adam => 4711,erna => 1324,eva => 4712}
%%> phone_book:look(erna, B2).
%%1324