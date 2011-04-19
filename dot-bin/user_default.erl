%%% @doc User Defaults for easier and faster acceess in Erlang Shell
%%% @author Uwe Dauernheim <uwe@dauernheim.net>
-module(user_default).

-author("Uwe Dauernheim <uwe@dauernheim.net>").

-export([ format/2
        , fmt/2
        ]).

format(Format, Data) -> io:format(fmt(Format, Data)).

fmt(Format, Data) -> lists:flatten(io_lib:format(Format, Data)).
