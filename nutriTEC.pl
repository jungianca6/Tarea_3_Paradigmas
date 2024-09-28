
:- ['BNF'],['Palabras clave'].



% Inicio del chat.
main:- inicio.

%Respuesta para entrada esperada.
inicio:-
    read(Entrada), 
    leer_entrada(Entrada). %Toma la entrada y la vuelve una lista para su evalucion
