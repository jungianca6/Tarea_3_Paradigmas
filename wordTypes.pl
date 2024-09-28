%Base de datos para las palabras
enfermedad(diabetes).
enfermedad(sobrepeso).
enfermedad(hipertension).
enfermedad(dislipidemia).

calorias(1500, 1800).
calorias(1650, 2100).
calorias(1875, 2400).
calorias(2130, 3000).

ejercicio_semanal(0, 2).
ejercicio_semanal(1, 3).
ejercicio_semanal(2, 4).
ejercicio_semanal(3, 6).

tipo_dieta(keto).
tipo_dieta(proteica).
tipo_dieta(baja_en_grasas).
tipo_dieta(vegana).

comidas_preferidas(mariscos).
comidas_preferidas(carne).
comidas_preferidas(alto_sodio).
comidas_preferidas(dulce).

% Predicado principal para identificar palabras clave y asignarlas a su lugar
identificar_palabra(Lista_a_buscar, [Condicion, MinCalorias, MaxCalorias, EjerMin, EjerMax, TiposAlimentacion, Restricciones]) :-
    encontrar_enfermedad(Lista_a_buscar, Condicion),
    encontrar_calorias(Lista_a_buscar, MinCalorias, MaxCalorias),
    encontrar_ejercicio(Lista_a_buscar, EjerMin, EjerMax),
    encontrar_dieta(Lista_a_buscar, TiposAlimentacion),
    encontrar_restricciones(Lista_a_buscar, Restricciones).

% Predicado para identificar enfermedad en la lista de entrada
encontrar_enfermedad(Lista, Enfermedad) :-
    member(Palabra, Lista), enfermedad(Palabra), !,
    Enfermedad = Palabra.   % Asigna la enfermedad encontrada
encontrar_enfermedad(_, '') :- !.  % Si no se encuentra, deja el espacio vacío

% Predicado para identificar calorías
encontrar_calorias(Lista, MinCalorias, MaxCalorias) :-
    member(Calorias, Lista),   % Busca el valor de calorías en la lista
    calorias(MinCalorias, MaxCalorias),   % Obtiene el intervalo de calorías
    Calorias >= MinCalorias,   % Verifica si el valor está dentro del intervalo
    Calorias =< MaxCalorias, !. % Verifica si el valor está dentro del intervalo
encontrar_calorias(_, '', '') :- !.  % Si no se encuentra, deja el espacio vacío

% Predicado para identificar el ejercicio semanal
encontrar_ejercicio(Lista, MinEjer, MaxEjer) :-
    member(Ejercicio, Lista),   % Busca el valor de ejercicio en la lista
    ejercicio_semanal(MinEjer, MaxEjer),  % Obtiene el intervalo de ejercicio
    Ejercicio >= MinEjer,        % Verifica si el valor está dentro del intervalo
    Ejercicio =< MaxEjer, !.     % Verifica si el valor está dentro del intervalo
encontrar_ejercicio(_, '', '') :- !.  % Si no se encuentra, deja el espacio vacío

% Predicado para identificar el tipo de dieta
encontrar_dieta(Lista, Dieta) :-
    member(Palabra, Lista), tipo_dieta(Palabra), !,
    Dieta = Palabra.
encontrar_dieta(_, '') :- !.

% Predicado para identificar restricciones alimentarias
encontrar_restricciones(Lista, Restriccion) :-
    member(Palabra, Lista), comidas_preferidas(Palabra), !,
    Restriccion = Palabra.
encontrar_restricciones(_, '') :- !.
