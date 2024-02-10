% Trabalho M3 - Daniel Sansão Araldi - Programação Lógica I

% Considere a seguinte base de conhecimento composta de predicados progenitor/2,
% masculino/1 e feminino/1:

% progenitor = progenitress
% "maria" é mãe de "jose"
progenitress(maria, jose).
% "joao" é pai de "jose"
progenitress(joao, jose).
% "joao" é pai de "ana"
progenitress(joao, ana).
% "jose" é pai de "julia"
progenitress(jose, julia).
% "jose" é pai de "iris"
progenitress(jose, iris).
% "iris" é mãe de "jorge"
progenitress(iris, jorge).

% masculino = masculine
masculine(joao).
masculine(jose).
masculine(jorge).

% feminino = feminine
feminine(maria).
feminine(julia).
feminine(ana).
feminine(iris).

% Desenvolva as seguintes regras (lembrando que são regras, não predicados):

% 1) Pode-se definir o predicado filho/2 como sendo o inverso de progenitor/2: se X é 
% progenitor de Y, então Y é filho de X. Escreva uma regra para computar o predicado 
% filho/2 e teste com algumas consultas.

% filho = child
child(Y, X) :- progenitress(X, Y).

% Teste de consultas:
% child(jose, maria) -> true porque "maria" é progenitora de "jose"
% child(iris, maria) -> false porque "iris" não é filha de "maria"
% -----------------------------------------------------------------------------------

% 2) Escreva regras para os predicados mãe/2 e pai/2. Teste sua regra.

% mãe = mother
mother(X, Y) :- feminine(X), progenitress(X, Y).
% pai = father
father(X, Y) :- masculine(X), progenitress(X, Y).

% Teste de consultas:
% mother(iris, jorge) -> true porque "iris" é mãe de "jorge"
% mother(jose, iris) -> false porque "jose" é pai e não mãe de "iris"
% father(jose, julia) -> true porque "jose" é pai de "julia"
% father(joao, julia) -> false porque "joao" é avô e não pai de "julia"
% -----------------------------------------------------------------------------------

% 3) Escreva regras para os predicados avô/2 e avó/2. Teste sua regra.

% avô = grandfather
grandfather(X, Z) :- progenitress(X, Y), progenitress(Y, Z), masculine(X).
% avó = grandmother
grandmother(X, Z) :- progenitress(X, Y), progenitress(Y, Z), feminine(X).

% Teste de consultas:
% grandfather(jose, jorge) -> true porque "jose" é avô de "jorge"
% grandfather(joao, jorge) -> false porque "joao" é bisavô e não avô de "jorge"
% grandmother(maria, julia) -> true porque "maria" é avó de "julia"
% grandmother(maria, ana) -> false porque "maria" não avó de "ana"
% -----------------------------------------------------------------------------------

% 4) Escreva uma regra para o predicado irmã/2. Teste sua regra. Em particular, 
% teste com a consulta irmã(X, iris).

% irmã = sister
sister(X, Y) :- feminine(X), progenitress(Z, X), progenitress(Z, Y), X \= Y.

% Teste de consultas:
% sister(julia, iris) -> true porque "julia" é irmã de "iris"
% sister(ana, iris) -> false porque "ana" é tia e não é irmã de "iris"
