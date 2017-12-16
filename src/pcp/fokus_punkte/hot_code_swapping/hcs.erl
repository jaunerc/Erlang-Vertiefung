-module(hcs).
-export([link_with/1, answer/0]).

% link_with/1
% Creates a new process linked with the given process Pid.
link_with(ClientPid) ->
  register(client, ClientPid),
  spawn_link(hcs, answer, []).

% answer/0
% Waits for questions to answer. This function is recalling himself forever.
% {question, Q} - Answers the given question.
% {upgrade} - Recompile and reloads the hcs module.
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
