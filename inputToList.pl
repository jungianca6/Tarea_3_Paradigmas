leer_entrada(Oracion):-
       atomic_list_concat(Palabras, ' ',Oracion), % Divide la oración en una lista de palabras
       maplist(string_lower,Palabras, PalabrasMinusculas), % Convierte las palabras a minúsculas
       PalabrasMinusculas= PalabrasFinales, % Asigna el resultado a una variable
       write(PalabrasFinales).


