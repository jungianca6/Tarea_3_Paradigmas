:- ['BNF'],['Palabras clave'], ['wordTypes'].


% Inicio del chat.
main:- inicio.

inicio :- 
    leer_entrada(Entrada),
    verificar_BNF(Entrada), !. % Para evitar que siga buscando otras soluciones

inicio:-inicio.%Si no se optiene la respuesta esperada, el chat no avanza.

verificar_BNF(Entrada) :-
    oracion(Entrada, []),
    write(Entrada),
    indentificar_palabras_clave(Entrada).

verificar_BNF(Entrada) :- 
    write('Disculpe, no he entendido.'), nl,
    inicio.

indentificar_palabras_clave(Entrada):- identificar_palabra(Entrada, Resultados), % Llama a identificar_palabra,
    write(Resultados), nl. % Imprime los resultados (opcional)

%identificar_palabra([tengo, keto],X).
%identificar_palabra([quiero, 5],X).

%'Excelente iniciativa. Estamos para asesorarte en todo lo que necesites.
%¿Tienes alguna enfermedad por la que ha iniciado este proceso?'
%'¿Tienes pensado una cantidad específica de calorías diarias por consumir?'
%'¿Eres activo físicamente?'
%'¿Tienes un tipo de dieta que no te gustaría realizar?'
%'¿Qué alimentos preferirías no consumir?'
