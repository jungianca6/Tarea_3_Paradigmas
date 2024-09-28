:- ['BNF'],['Palabras clave'], ['wordTypes'].


% Inicio del chat.
main:- inicio.

inicio :- 
    leer_entrada(Entrada),
    verificar_BNF(Entrada), !. % Para evitar que siga buscando otras soluciones

inicio:-inicio.%Si no se optiene la respuesta esperada, el chat no avanza.

verificar_BNF(Entrada) :-
    write(Entrada),
    oracion(Entrada, []), 
    identificar_palabra([hola, como, esta], Resultados), % Llama a identificar_palabra
    write(Resultados), nl. % Imprime los resultados (opcional)

verificar_BNF(Entrada) :- 
    write('Disculpe, no he entendido.'), nl,
    inicio.


%'Hola encantado de que verlo mejorar su estilo de vida. Cuénteme ¿en qué lo
%puedo ayudar?
%'Excelente iniciativa. Estamos para asesorarte en todo lo que necesites.
%¿Tienes alguna enfermedad por la que ha iniciado este proceso?'
%'¿Tienes pensado una cantidad específica de calorías diarias por consumir?'
%'¿Eres activo físicamente?'
%'¿Tienes un tipo de dieta que no te gustaría realizar?'
%'¿Qué alimentos preferirías no consumir?'
