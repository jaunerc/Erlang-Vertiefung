-module(hcs2).
-export([link_with/1, answer/0]).

link_with(ClientPid) ->
  register(client, ClientPid),
  spawn_link(hcs2, answer, []).

answer() ->
  receive
    {question, _} ->
      io:format("answer: ~p ~n", [42]),
      ?MODULE:answer();
    {upgrade} ->
      code:purge(?MODULE),
      compile:file(?MODULE),
      code:load_file(?MODULE),
      ?MODULE:answer()
  end.
