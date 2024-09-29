% fusionar/3: Funde dos listas L1 y L2 en una lista resultante L3
% donde se reemplazan los espacios vacíos, y se mantiene el elemento
% de la primera lista si ambas listas tienen un elemento en la misma posición.
fusionar([], [], []). % Caso base: dos listas vacías dan como resultado una lista vacía.

fusionar([H1|T1], [H2|T2], [H1|L3]) :- % Si el primer elemento de L1 no es vacío
    H1 \= '_', 
    fusionar(T1, T2, L3). % Llama recursivamente a la función.

fusionar([H1|T1], [H2|T2], [H2|L3]) :- % Si el primer elemento de L1 es vacío
    H1 = '_', 
    fusionar(T1, T2, L3). % Llama recursivamente a la función.

fusionar([H1|T1], [H2|T2], [H1|L3]) :- % Si ambos elementos son diferentes de vacío
    H1 \= '_',
    H2 \= '_',
    fusionar(T1, T2, L3). % Llama recursivamente a la función.
    