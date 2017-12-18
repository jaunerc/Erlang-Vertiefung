%%> T = {john,25,{june,16}}.
%%{john,25,{june,16}}
%%> tuple_size(T).
%%3
%%> element(1, T).
%%john
%%> element(1, element(3, T)).
%%june
%%> T2 = setelement(2, T, 43).
%%{john,43,{june,16}}