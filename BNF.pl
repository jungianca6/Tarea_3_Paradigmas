:-style_check(-singleton).

%###################Estructuras para las oraciones###################

%##Estructuras con saludos##
oracion(S0, S) :- saludo(S0, S1).
oracion(S0, S) :- saludo(S0, S1), sintagma_verbal(S1, S).
oracion(S0, S) :- saludo(S0, S1), sintagma_nominal(S1, S).

%##Estructuras con agradecimientos##
oracion(S0, S) :- agradecimiento(S0, S1).
oracion(S0, S) :- agradecimiento(S0, S1), sintagma_nominal(S1, S).
oracion(S0, S) :- agradecimiento(S0, S1), sintagma_verbal(S1, S).

%##Estructura con un verbo al principio Ej "Quiero ....."##
oracion(S0, S) :- sintagma_verbal(S0, S).

%##Estructura con sintagma nominal primero## 
oracion(S0, S) :- sintagma_nominal(S0, S1), sintagma_verbal(S1, S).


%###################Estructuras para los sintagmas nominales###################
sintagma_nominal(S0, S) :- determinante(S0, S1), nombre(S1, S).
sintagma_nominal(S0, S) :- nombre(S0, S). 
sintagma_nominal(S0, S) :- determinante(S0, S). 

%###################Estructuras para los sintagmas verbales###################
sintagma_verbal(S0, S) :- verbo(S0, S).
sintagma_verbal(S0, S) :- verbo(S0, S1), sintagma_nominal(S1, S).

%###################Definiciones para el BNF###################
determinante([el | S], S).
determinante([la | S], S).
determinante([yo | S], S).
determinante([un | S], S).

nombre([hombre | S], S).
nombre([manzana | S], S).
nombre([dieta | S], S).
nombre([vida | S], S).
nombre([saludable | S], S).
nombre([estilo | S], S).

verbo([come | S], S).
verbo([quiero | S], S).
verbo([realizar | S], S).
verbo([llevar | S], S).
verbo([comer | S], S).
verbo([intentar | S], S).
verbo([deseo | S], S).

saludo([hola | S], S).

agradecimiento([gracias | S], S).
agradecimiento([muchas, gracias | S], S).

%oracion([Yo, deseo, llevar, un, estilo, de, vida, saludable],[])