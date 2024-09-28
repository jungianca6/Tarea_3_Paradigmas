leer_entrada(List) :-
    read_string(user, "\n", "\r", _, String),
    atom_string(Atom, String),
    atomic_list_concat(List, ' ', Atom).


