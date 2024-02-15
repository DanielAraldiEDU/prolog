father(david, john).
father(jim, david).
father(steve, jim).
father(nathan, steve).

% Check if it's grandfather
grandfather(X, Y) :- father(X, Z), father(Z, Y).

% Check if it's ancestral (non-recursive call)
% ancestral(A, B) :- father(A, B).
% ancestral(A, B) :- father(A, X), father(X, B).
% ancestral(A, B) :- father(A, X), father(X, Y), father(Y, B).
% ancestral(A, B) :- father(A, X), father(X, Y), father(Y, Z), father(Z,B).

% Check if it's ancestral (recursive call)
ancestral(X, Y) :- father(X, Y).
ancestral(X, Y) :- father(X, Z), ancestral(Z, Y).
% ----------------------------------------------

successor(2, 1).
successor(3, 2).
successor(4, 3).
successor(5, 4).
successor(6, 5).
successor(7, 6).

% Check if it's successor
bigger(X, Y) :- successor(X, Y).
bigger(X, Y) :- successor(X, Z), bigger(Z, Y).
% ----------------------------------------------
