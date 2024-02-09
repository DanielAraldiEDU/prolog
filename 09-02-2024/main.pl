% Create predicate human, that's ask
% if "joao" or "pedro" is an human
human(joao).
human(pedro).

% Queries:
% human(Person) -> Show all humans
% human(joao) -> true because "joao"
% is an human
%-----------------------------------

% Animals:
animal(tomba).
animal(rex).
animal(bolota).

% Create rules
% "X" is animal if it this same "X"
% is a dog
animal(X) :- dog(X).

% Tomba and Rex are dogs
dog(tomba).
dog(rex).

% Bolota is a cat
cat(bolota).

% Queries:
% animal(Animal) -> Show all animals
% animal(rex) -> true because "rex"
% is an animal
% animal(tomba) -> true because is
% an animal and a dog
% animal(bolota) -> false because
% "bolota" isn't a dog.
