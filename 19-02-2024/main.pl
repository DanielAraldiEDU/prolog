% Trabalho M3 - Daniel Sansão Araldi - Problema Prolog - Fatos e Regras
% ----------------------------------------------------------------------------------------

% 1) Verificar se uma lista está ordenada de forma crescente:
% ordenado(Lista) = sorted(List)
sorted([]).
sorted([_]).
sorted([X , H|T]) :-
    X =< H,
    sorted([X|T]).

% Testes de fatos e regras:
% sorted([10, 20, 30, 40, 50]) -> true
% sorted([55, 44, 33, 22, 11]) -> false
% sorted([-1, 4, -3, 2, -5]) -> false
% ----------------------------------------------------------------------------------------

% 2) Encontrar o maior elemento em uma lista: 
% max_lista(Lista, Max) = max_list(List, Max)
max_list([X], X).
max_list([H|T], Max) :-
    max_list(T, Rest),
    Max is max(H, Rest).

% Testes de fatos e regras:
% max_list([10, 55, 33, 95, 21], Max) -> Max = 95
% max_list([-1, -5, -3, -5, -10], Max) -> Max = -1
% ----------------------------------------------------------------------------------------

% 3) Calcular o N-ésimo termo da sequência de Fibonacci:
% fibonacci(N, Resultado) = fibonacci(X, Result)
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(X, Result) :-
    X > 1,
    Y is X - 1,
    Z is X - 2,
    fibonacci(Y, I),
    fibonacci(Z, J),
    Result is I + J.

% Testes de fatos e regras:
% fibonacci(8, Result) -> Result = 21
% fibonacci(14, Result) -> Result = 377
% ----------------------------------------------------------------------------------------

% 4) Verificar se um número é primo:
% is_primo(N) = is_prime(X)
is_prime(2).
is_prime(3).
is_prime(X) :-
    X > 3,
    X mod 2 =\= 0,
    \+ has_divisor(X, 3).

has_divisor(X, Divisor) :-
    Divisor * Divisor =< X,
    (X mod Divisor =:= 0 ;
    NextDivisor is Divisor + 2,
    has_divisor(X, NextDivisor)).

% Testes de fatos e regras:
% is_prime(293) -> true
% is_prime(347) -> true
% is_prime(728) -> false
% is_prime(824) -> false
