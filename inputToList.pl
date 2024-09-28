leer_entrada(Oracion) :-
    read_string(user, "\n", "\r", _, String),
    atom_string(Atom, String),
    atomic_list_concat(Oracion, ' ', Atom).


