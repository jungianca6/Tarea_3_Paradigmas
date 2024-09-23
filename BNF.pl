:-style_check(-singleton).

%###################Estructuras para las oraciones###################

% Estructuras con saludos
oracion(S0, S) :- saludo(S0, S1).
oracion(S0, S) :- saludo(S0, S1), sintagma_verbal(S1, S).
oracion(S0, S) :- saludo(S0, S1), sintagma_nominal(S1, S).

% Estructuras con agradecimientos
oracion(S0, S) :- agradecimiento(S0, S1).
oracion(S0, S) :- agradecimiento(S0, S1), sintagma_nominal(S1, S).
oracion(S0, S) :- agradecimiento(S0, S1), sintagma_verbal(S1, S).

% Estructura con un verbo al principio
oracion(S0, S) :- sintagma_verbal(S0, S).

% Estructura con sintagma nominal primero
oracion(S0, S) :- sintagma_nominal(S0, S1), sintagma_verbal(S1, S).
oracion(S0, S) :- sintagma_nominal(S0, S1), sintagma_verbal(S1, S2), frase_preposicional(S2, S).  % Frase preposicional al final

%###################Estructuras para los sintagmas nominales###################
sintagma_nominal(S0, S) :- determinante(S0, S1), adjetivo(S1, S2), nombre(S2, S).  % Determinante + Adjetivo + Nombre
sintagma_nominal(S0, S) :- determinante(S0, S1), nombre(S1, S).  % Determinante + Nombre
sintagma_nominal(S0, S) :- adjetivo(S0, S1), nombre(S1, S).  % Adjetivo + Nombre
sintagma_nominal(S0, S) :- nombre(S0, S).  % Solo Nombre
sintagma_nominal(S0, S) :- nombre(S0, S1), adjetivo(S1, S).  % Solo Nombre
sintagma_nominal(S0, S) :- determinante(S0, S).  % Solo Determinante

%###################Estructuras para los sintagmas verbales###################
sintagma_verbal(S0, S) :- verbo(S0, S).
sintagma_verbal(S0, S) :- verbo(S0, S1), verbo(S1, S).
sintagma_verbal(S0, S) :- verbo(S0, S1), verbo(S1, S2), sintagma_nominal(S2, S).
sintagma_verbal(S0, S) :- verbo(S0, S1), sintagma_nominal(S1, S).

%###################Estructuras para frases preposicionales###################
frase_preposicional(S0, S) :- preposicion(S0, S1), sintagma_nominal(S1, S).

%###################Definiciones para el BNF###################
determinante([el | S], S).
determinante([la | S], S).
determinante([un | S], S).

nombre([hombre | S], S).
nombre([manzana | S], S).
nombre([saludable | S], S).
nombre([dieta | S], S).
nombre([vida | S], S).
nombre([saludable | S], S).
nombre([estilo | S], S).
nombre([yo | S], S).
nombre([dislipidemia | S], S).
nombre([me | S], S).

verbo([come | S], S).
verbo([quiero | S], S).
verbo([realizar | S], S).
verbo([llevar | S], S).
verbo([comer | S], S).
verbo([intentar | S], S).
verbo([deseo | S], S).
verbo([han | S], S).
verbo([diagnosticado | S], S).

saludo([hola | S], S).

agradecimiento([gracias | S], S).
agradecimiento([muchas, gracias | S], S).

preposicion([de | S], S).
preposicion([una | S], S).
preposicion([en | S], S).
preposicion([con | S], S).
preposicion([sobre | S], S).


adjetivo([saludable | S], S).
adjetivo([rico | S], S).
adjetivo([nutritivo | S], S).

%oracion([yo, deseo, llevar, un, estilo, de, vida, saludable],[])
%oracion([Me, han, diagnosticado, dislipidemia],[])