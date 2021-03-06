%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Copyright (c) 2012-2014 Kivra
%%%
%%% Permission to use, copy, modify, and/or distribute this software for any
%%% purpose with or without fee is hereby granted, provided that the above
%%% copyright notice and this permission notice appear in all copies.
%%%
%%% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
%%% WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
%%% MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
%%% ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
%%% WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
%%% ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
%%% OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
%%%
%%% @doc Money Laundry. Monetary parsing and formatting
%%% @end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%_* Header ===========================================================
-ifndef(__MONEY_LAUNDRY_HRL).
-define(__MONEY_LAUNDRY_HRL, true).

%%%_ * Types -----------------------------------------------------------
-record(money_laundry,
          { currency=error('no_currency') :: money_laundry:currency_atom()
          , rational=error('no_rational') :: rational:rational()
                                           | rational:decimal()
          }).

-record(rational,
          { numerator=error('no_numerator')  :: integer()
          , denom=error('no_demoninator')    :: pos_integer()
          , decfact=error('no_decmalfactor') :: pos_integer()
          }).

-record(decimal,
          { numerator=error('no_numerator')  :: integer()
          , denom=error('no_demoninator')    :: pos_integer()
          }).

%%%_* Footer ===========================================================
-endif. %include guard

%%% Local Variables:
%%% allout-layout: t
%%% erlang-indent-level: 4
%%% End:
