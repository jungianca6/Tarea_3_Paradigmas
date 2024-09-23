:-style_check(-singleton).

oracion(S0,S):- sintagma_nominal(S0,S1), sintagma_verbal(S1,S).
oracion(S0,S):- sintagma_verbal(S0,S1).

sintagma_nominal(S0,S):- determinante(S0,S1), nombre(S1,S).
sintagma_nominal(S0,S):- nombre(S1,S).

sintagma_verbal(S0,S):- verbo(S0,S).
sintagma_verbal(S0,S):- verbo(S0,S1), sintagma_nominal(S1,S).

determinante([el|S],S).
determinante([la|S],S).

nombre([hombre|S],S).
nombre([manzana|S],S).

verbo([come|S],S).
