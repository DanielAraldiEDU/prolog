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
% "X" is animal if it is a dog too
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
%-----------------------------------

% "maria" is a mom of "jose"
progenitress(maria, jose).
% "joao" is dad of "jose"
progenitress(joao, jose).
% "joao" is dad of "ana"
progenitress(joao, ana).
% "jose" is dad of "julia"
progenitress(jose, julia).
% "jose" is dad of "iris"
progenitress(jose, iris).
% "iris" is mom of "jorge"
progenitress(iris, jorge).

% Queries:
% progenitress(ana, jorge) -> false
% because ana ins't mom of "jorge"
% progenitress(Parents, iris) -> Show
% parents of the "iris"
% progenitress(Parents, jose) -> Show
% parents of the "jose"
