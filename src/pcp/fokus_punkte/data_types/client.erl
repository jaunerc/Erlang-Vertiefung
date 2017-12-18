-module(client).
-export([send/1]).

send(N) ->
  {ok, Socket} = gen_udp:open(0, [binary]),
  %%ok = gen_udp:send(Socket, "localhost", 4000, N), Value = receive {udp, Socket, _, _, Bin} -> io:format("client received:~p~n",[Bin]) after 2000 -> 0 end,
  ok = gen_udp:send(Socket, "localhost", 4000, N),
  gen_udp:close(Socket).
  %%Value.