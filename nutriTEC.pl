:- ['BNF'], ['Palabras clave'], ['wordTypes'].



% Inicio del chat.
main :- inicio.

inicio :- 
    write('Hola, encantado de verlo mejorar su estilo de vida. Cuénteme, ¿en qué lo puedo ayudar?'), nl,
    leer_entrada(Entrada),
    verificar_BNF(Entrada), !. % Para evitar que siga buscando otras soluciones

inicio :- inicio. % Si no se obtiene la respuesta esperada, el chat no avanza.

verificar_BNF(Entrada) :-
    oracion(Entrada, []),
    write(Entrada),
    indentificar_palabras_clave(Entrada),
    segunda_pregunta. % Llama a la segunda pregunta después de procesar la primera

verificar_BNF(Entrada) :- 
    write('Disculpe, no he entendido.'), nl,
    inicio.

indentificar_palabras_clave(Entrada) :- 
    identificar_palabra(Entrada, Resultados), % Llama a identificar_palabra,
    write(Resultados), nl. % Imprime los resultados (opcional)

% Segunda pregunta.
segunda_pregunta :-
    write('Gracias por su respuesta. Ahora, ¿Ha sido diagnosticado con alguna enfermedad?'), nl,
    leer_entrada(Entrada2),
    verificar_BNF2(Entrada2).

verificar_BNF2(Entrada2) :-
    oracion(Entrada2, []),
    write(Entrada2),
    indentificar_palabras_clave(Entrada2),
    tercera_pregunta. % Llama a la tercera pregunta

verificar_BNF2(Entrada2) :- 
    write('Disculpe, no he entendido esa respuesta.'), nl,
    segunda_pregunta. % Volver a preguntar si no se entiende

% Tercera pregunta.
tercera_pregunta :-
    write('¿Tienes pensado una cantidad específica de calorías diarias por consumir?'), nl,
    leer_entrada(Entrada3),
    verificar_BNF3(Entrada3).

verificar_BNF3(Entrada3) :-
    oracion(Entrada3, []),
    write(Entrada3),
    indentificar_palabras_clave(Entrada3),
    cuarta_pregunta. % Llama a la cuarta pregunta

verificar_BNF3(Entrada3) :- 
    write('Disculpe, no he entendido esa respuesta.'), nl,
    tercera_pregunta. % Volver a preguntar si no se entiende

% Cuarta pregunta.
cuarta_pregunta :-
    write('¿Eres activo físicamente?'), nl,
    leer_entrada(Entrada4),
    verificar_BNF4(Entrada4).

verificar_BNF4(Entrada4) :-
    oracion(Entrada4, []),
    write(Entrada4),
    indentificar_palabras_clave(Entrada4),
    quinta_pregunta. % Llama a la quinta pregunta

verificar_BNF4(Entrada4) :- 
    write('Disculpe, no he entendido esa respuesta.'), nl,
    cuarta_pregunta. % Volver a preguntar si no se entiende

% Quinta pregunta.
quinta_pregunta :-
    write('¿Tienes un tipo de dieta que te gustaría realizar?'), nl,
    leer_entrada(Entrada5),
    verificar_BNF5(Entrada5).

verificar_BNF5(Entrada5) :-
    oracion(Entrada5, []),
    write(Entrada5),
    indentificar_palabras_clave(Entrada5),
    sexta_pregunta. % Llama a la sexta pregunta

verificar_BNF5(Entrada5) :- 
    write('Disculpe, no he entendido esa respuesta.'), nl,
    quinta_pregunta. % Volver a preguntar si no se entiende

% Sexta pregunta.
sexta_pregunta :-
    write('¿Qué alimentos preferirías consumir?'), nl,
    leer_entrada(Entrada6),
    verificar_BNF6(Entrada6).

verificar_BNF6(Entrada6) :-
    oracion(Entrada6, []),
    write(Entrada6),
    indentificar_palabras_clave(Entrada6).

verificar_BNF6(Entrada6) :- 
    write('Disculpe, no he entendido esa respuesta.'), nl,
    sexta_pregunta. % Volver a preguntar si no se entiende

