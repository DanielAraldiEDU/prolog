% Check if a number is pair
is_pair(X) :- X mod 2 =:= 0.
% The "=:=" operator check if two values
% are equals
% The "=" operator check if two values
% are identical!!!
% The "is" operator checks if term on the
% right is equal to the left term
% -----------------------------------------

factorial(0, 1).
factorial(X, Result) :-
	X > 0,
	Y is X - 1,
	factorial(Y, SubResult),
	Result is X * SubResult.
% -----------------------------------------

reverse_list([], []).
reverse_list([H|T], Reverse) :-
  reverse_list(T, ReverseTail),
  append(ReverseTail, [H], Reverse).
% The "append" function makes concatenation
% between arrays

is_palindrome(List) :-
  reverse_list(List, List).
