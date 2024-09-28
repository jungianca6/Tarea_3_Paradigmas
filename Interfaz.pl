% Inicio del chat.

:- ['BNF'].

main:- inicio.

%Respuesta para entrada esperada.
inicio:-
    read(Entrada),
    leer_entrada(Entrada).

