-module(hcs).
-export([link_with/1, message_receiver/0, reply_with_price_of/1]).

link_with(ClientPid) ->
  register(client, ClientPid),
  spawn_link(hcs, message_receiver, []).

message_receiver() ->
  receive
    {price, Item} 	-> hcs:reply_with_price_of(Item),   % hcs: added for hot code swapping
      hcs:message_receiver()
  end.

reply_with_price_of(Item) ->
  client ! io:format("The price of ~p is: $~p ~n", [Item, price(Item)]).

price(Item) ->
  case Item of
    tea      -> 2.05;
    coffee   -> 2.10;
    milk     -> 3.5;   % price before 0.99
    bread    -> 0.50
  end.