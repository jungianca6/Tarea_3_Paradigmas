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
    (   member(Palabra, Lista),
        enfermedad(Palabra) ->
        Enfermedad = Palabra
    ;   Enfermedad = ''  % Si no se encuentra, asigna espacio vacío
    ).

% Predicado para identificar calorías
encontrar_calorias(Lista, MinCalorias, MaxCalorias) :-
    (   member(Calorias, Lista),
        number(Calorias),  % Asegúrate de que Calorias es un número
        calorias(MinCalorias, MaxCalorias),
        Calorias >= MinCalorias,
        Calorias =< MaxCalorias ->
        true
    ;   MinCalorias = '', MaxCalorias = ''  % Asigna espacios vacíos si no se encuentra
    ).

% Predicado para identificar el ejercicio semanal
encontrar_ejercicio(Lista, MinEjer, MaxEjer) :-
    (   member(Ejercicio, Lista),
        number(Ejercicio),  % Asegúrate de que Ejercicio es un número
        ejercicio_semanal(MinEjer, MaxEjer),
        Ejercicio >= MinEjer,
        Ejercicio =< MaxEjer ->
        true
    ;   MinEjer = '', MaxEjer = ''  % Asigna espacios vacíos si no se encuentra
    ).

% Predicado para identificar el tipo de dieta
encontrar_dieta(Lista, Dieta) :-
    (   member(Palabra, Lista),
        tipo_dieta(Palabra) ->
        Dieta = Palabra
    ;   Dieta = ''  % Si no se encuentra, asigna espacio vacío
    ).

% Predicado para identificar restricciones alimentarias
encontrar_restricciones(Lista, Restriccion) :-
    (   member(Palabra, Lista),
        comidas_preferidas(Palabra) ->
        Restriccion = Palabra
    ;   Restriccion = ''  % Si no se encuentra, asigna espacio vacío
    ).