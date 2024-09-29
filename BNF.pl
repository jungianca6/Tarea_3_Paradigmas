:- style_check(-singleton).

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

% Estructura con una palabra al principio
oracion(S0, S) :- sintagma_nominal(S0, S).

% Estructura con sintagma nominal primero
oracion(S0, S) :- sintagma_nominal(S0, S1), sintagma_verbal(S1, S).
oracion(S0, S) :- sintagma_nominal(S0, S1), sintagma_verbal(S1, S2), frase_preposicional(S2, S).  % Frase preposicional al final

%###################Estructuras para los sintagmas nominales###################
sintagma_nominal(S0, S) :- nombre(S0, S).  % Solo Nombre
sintagma_nominal(S0, S) :- nombre(S0, S1), adjetivo(S1, S).  % Nombre + Adjetivo
sintagma_nominal(S0, S) :- determinante(S0, S).  % Solo Determinante
sintagma_nominal(S0, S) :- determinante(S0, S1), nombre(S1, S).  % Determinante + Nombre
sintagma_nominal(S0, S) :- determinante(S0, S1), adjetivo(S1, S2), nombre(S2, S).  % Determinante + Adjetivo + Nombre
sintagma_nominal(S0, S) :- adjetivo(S0, S1), nombre(S1, S).  % Adjetivo + Nombre

% Agregar números al sintagma nominal
sintagma_nominal(S0, S) :- numero(S0, S).  % Solo Número
sintagma_nominal(S0, S) :- numero(S0, S1), adjetivo(S1, S).  % Número + Adjetivo
sintagma_nominal(S0, S) :- numero(S0, S1), nombre(S1, S).  % Número + Adjetivo
sintagma_nominal(S0, S) :- determinante(S0, S1), numero(S1, S).  % Determinante + Número

%###################Estructuras para los sintagmas verbales###################
sintagma_verbal(S0, S) :- verbo(S0, S).
sintagma_verbal(S0, S) :- verbo(S0, S1), verbo(S1, S).
sintagma_verbal(S0, S) :- verbo(S0, S1), sintagma_nominal(S1, S).
sintagma_verbal(S0, S) :- verbo(S0, S1), verbo(S1, S2), sintagma_nominal(S2, S).

%###################Estructuras para frases preposicionales###################
frase_preposicional(S0, S) :- preposicion(S0, S1), sintagma_nominal(S1, S).

%###################Definición de números###################
numero([N | S], S) :- integer(N).  % Ahora `N` debe ser un número entero
numero([N | S], S).

%###################Definiciones para el BNF###################

%###################Definiciones para los determinantes###################
determinante([el | S], S).
determinante([la | S], S).
determinante([un | S], S).
determinante([los | S], S).
determinante([las | S], S).
determinante([una | S], S).
determinante([unos | S], S).
determinante([algunos | S], S).
determinante([cada | S], S).
determinante([cualquier | S], S).
determinante([mismo | S], S).
determinante([este | S], S).
determinante([esa | S], S).
determinante([aquella | S], S).

%Definiciones para los nombres o sustantivos

% Nombres de personas
nombre([hombre | S], S).
nombre([yo | S], S).
nombre([me | S], S).

% Nombres de condiciones de salud
nombre([dislipidemia | S], S).
nombre([diabetes | S], S).
nombre([sobrepeso | S], S).
nombre([desnutrición | S], S).

% Nombres relacionados con el estilo de vida
nombre([vida | S], S).
nombre([estilo | S], S).
nombre([saludable | S], S).
nombre([ejercicio | S], S).
nombre([ciclismo | S], S).

% Nombres de alimentos
nombre([manzana | S], S).
nombre([alimento | S], S).
nombre([fruta | S], S).
nombre([vegetales | S], S).
nombre([tortilla | S], S).
nombre([queso | S], S).
nombre([pollo | S], S).
nombre([atún | S], S).
nombre([huevo | S], S).
nombre([aguacate | S], S).
nombre([lentejas | S], S).

% Nombres de términos relacionados con la nutrición
nombre([calorías | S], S).
nombre([dieta | S], S).
nombre([plan | S], S).
nombre([gusto | S], S).
nombre([mantequilla | S], S).
nombre([café | S], S).
nombre([té | S], S).

%Definiciones para los verbos
verbo([come | S], S).
verbo([quiero | S], S).
verbo([realizar | S], S).
verbo([llevar | S], S).
verbo([comer | S], S).
verbo([intentar | S], S).
verbo([deseo | S], S).
verbo([han | S], S).
verbo([diagnosticado | S], S).
verbo([tengo | S], S).

% Definiciones para los saludos
saludo([hola | S], S).
saludo([buenos | S], S).
saludo([buenas | S], S).
saludo([qué | S], S).
saludo([saludos | S], S).
saludo([hey | S], S).
saludo([buenas, tardes | S], S).
saludo([buenos, días | S], S).
saludo([buenas, noches | S], S).
saludo([pura, vida | S], S).

% Definiciones para los agradecimientos
agradecimiento([gracias | S], S).
agradecimiento([muchas, gracias | S], S).
agradecimiento([gracias, NutriTec | S], S).
agradecimiento([te, lo, agradezco | S], S).
agradecimiento([agradezco | S], S).
agradecimiento([mil, gracias | S], S).
agradecimiento([estoy, agradecido | S], S).
agradecimiento([te, doy, las, gracias | S], S).
agradecimiento([gracias, por, tu, ayuda | S], S).

% Definiciones para las preposiciones
preposicion([de | S], S).
preposicion([en | S], S).
preposicion([con | S], S).
preposicion([sobre | S], S).
preposicion([para | S], S).
preposicion([a | S], S).
preposicion([ante | S], S).
preposicion([bajo | S], S).
preposicion([entre | S], S).
preposicion([durante | S], S).
preposicion([hacia | S], S).

% Definiciones para los adjetivos
adjetivo([saludable | S], S).
adjetivo([rico | S], S).
adjetivo([nutritivo | S], S).
adjetivo([nutritiva | S], S).
adjetivo([bajo | S], S).
adjetivo([alto | S], S).
adjetivo([fácil | S], S).
adjetivo([sano | S], S).
adjetivo([delicioso | S], S).
adjetivo([variado | S], S).
adjetivo([equilibrado | S], S).

leer_entrada(Oracion) :-
    read_line_to_string(user, Line),  % Cambiado para leer línea
    split_string(Line, " ", "", StringList),  % Divide la línea en palabras
    maplist(atom_number_o_cadena, StringList, Oracion).  % Convierte a número si es posible

% Convierte cadenas a números donde sea posible, o deja el término como una cadena
atom_number_o_cadena(Str, Num) :-
    atom_number(Str, Num),
    !.  % Corte para evitar más retrocesos si la conversión es exitosa

atom_number_o_cadena(Str, Str).  % Si falla, lo deja como cadena
%Oracion debe estar en comilla simple. Ej: 'prolog terrorista'
%leer_entrada('prolog terrorista').

%Ejemplos de inputs
%oracion([yo, deseo, llevar, un, estilo, de, vida, saludable],[]).
%oracion([me, han, diagnosticado, dislipidemia],[]).
