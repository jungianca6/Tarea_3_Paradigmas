% Base de conocimientos de dietas
% Base de conocimientos de dietas con su descripcion de comidas
dieta(keto_pro_diabetes_controlada, diabetes, 1500, 1800, 0, 2, [keto, proteica], [mariscos, carne], [
    desayuno('1 tortilla de huevo con espinacas y aguacate.', '1 taza de caf� negro sin az�car.'),
    merienda_manana('1 pu�ado de almendras.', '1 taza de t� verde.'),
    almuerzo('Pollo a la parrilla con ensalada de aguacate y pepino.', '1/2 taza de arroz integral.'),
    merienda_tarde('1 yogurt natural bajo en az�car.'),
    cena('Salm�n a la plancha con br�coli al vapor.', '1/3 taza de quinoa.')]).
dieta(proteica_balanceada_diabetes, diabetes, 1650, 2100, 1, 3, [proteica, baja_en_grasas], [carne, alto_sodio], [
    desayuno('1 omelette de claras con espinacas y champi�ones.', '1 rebanada de pan integral.'),
    merienda_manana('1 pu�ado de almendras.', '1 pu�ado de nueces.'),
    almuerzo('Filete de pollo a la parrilla con ensalada mixta.', '1/2 taza de quinoa.'),
    merienda_tarde('1 manzana.'),
    cena('Pescado al horno con esp�rragos al vapor', '1/3 taza de arroz integral.f')]).
dieta(vegana_light_diabetes, diabetes, 1875, 2400, 2, 4, [baja_en_grasas, vegana], [alto_sodio, dulce], [
    desayuno('1 batido de frutas con espinacas, pl�tano y leche de almendra.', '1 rebanada de pan integral con aguacate.'),
    merienda_manana('1 pu�ado de almendras.', '1 taza de t� verde.'),
    almuerzo('Ensalada de lentejas con quinoa, espinacas y tomate.', '1 taza de papaya.'),
    merienda_tarde('1 taza de yogurt de soya con fresas.'),
    cena('Tofu salteado con verduras al vapor.', '1/3 taza de arroz integral.')]).
dieta(ketovegana_diabetes_activa, diabetes, 2130, 3000, 3, 6, [vegana, keto], [dulce], [
    desayuno('1 batido verde con espinacas, manzana y semillas de chía.', '1 rebanada de pan integral con aguacate.'),
    merienda_manana('1 pu�ado de nueces.', '1 taza de caf� sin az�car.'),
    almuerzo('Tofu a la parrilla con ensalada de espinacas y pepino.', '1/3 taza de arroz de coliflor.'),
    merienda_tarde('1 taza de yogurt de coco con fresas.'),
    cena('Tempeh al horno con br�coli al vapor.', '1/2 aguacate.')]).
dieta(keto_pro_control_peso, sobrepeso, 1500, 1800, 0, 2, [keto, proteica], [mariscos, carne], [
    desayuno('Huevos revueltos con espinacas y aguacate.', '1 taza de caf� negro sin az�car.'),
    merienda_manana('1 pu�ado de almendras.'),
    almuerzo('Pollo a la parrilla con br�coli al vapor.', '1/2 taza de quinoa.'),
    merienda_tarde('1 rebanada de queso fresco.'),
    cena('Salm�n al horno con esp�rragos al vapor.', '1/3 taza de arroz integral.')]).
dieta(proteica_balanceada_control_peso, sobrepeso, 1650, 2100, 1, 3, [proteica, baja_en_grasas], [carne, alto_sodio], [
    desayuno('1 tortilla de claras de huevo con espinacas.', '1 rebanada de pan integral.'),
    merienda_manana('1 manzana.'),
    almuerzo('Pollo al horno con ensalada de aguacate y tomate.', '1/2 taza de quinoa.'),
    merienda_tarde('1 taza de yogurt griego.'),
    cena('Pescado al vapor con ensalada de espinacas y pepino.')]).
dieta(vegana_light_control_peso, sobrepeso, 1875, 2400, 2, 4, [baja_en_grasas, vegana], [alto_sodio, dulce], [
    desayuno('1 batido de pl�tano y avena con leche de almendras.', '1 rebanada de pan integral con aguacate.'),
    merienda_manana('1 pu�ado de nueces.'),
    almuerzo('Tofu a la parrilla con ensalada de espinacas y quinoa.', '1/2 taza de arroz integral.'),
    merienda_tarde('1 manzana.'),
    cena('Tempeh al horno con esp�rragos.', '1/2 aguacate.')]).
dieta(ketovegana_activa_control_peso, sobrepeso, 2130, 3000, 3, 6, [vegana, keto], [dulce], [
    desayuno('1 batido verde con espinacas, aguacate y semillas de lino.', '1 rebanada de pan de centeno.'),
    merienda_manana('1 pu�ado de almendras.'),
    almuerzo('Hamburguesa de tempeh con ensalada verde.', '1/2 taza de arroz integral.'),
    merienda_tarde('1 taza de yogurt de coco con fresas.'),
    cena('Tofu a la parrilla con esp�rragos y 1/2 aguacate.')]).
dieta(keto_pro_hipertension_controlada, hipertension, 1500, 1800, 0, 2, [keto, proteica], [mariscos, carne], [
    desayuno('Omelette de claras con espinacas.', '1 taza de caf� sin az�car.'),
    merienda_manana('1 pu�ado de nueces.'),
    almuerzo('Pollo a la parrilla con ensalada de pepino y espinacas.', '1/2 taza de arroz integral.'),
    merienda_tarde('1 taza de yogurt natural.'),
    cena('Pescado al vapor con br�coli al vapor.')]).
dieta(proteica_balanceada_hipertension, hipertension, 1650, 2100, 1, 3, [proteica, baja_en_grasas], [carne, alto_sodio], [
    desayuno('1 tortilla de huevo con champi�ones y espinacas.', '1 rebanada de pan integral.'),
    merienda_manana('1 pu�ado de almendras.'),
    almuerzo('Pechuga de pollo al horno con ensalada de tomate y pepino.', '1/3 taza de quinoa.'),
    merienda_tarde('1 yogurt natural bajo en grasa.'),
    cena('Pescado a la parrilla con verduras al vapor.')]).
dieta(vegana_light_hipertension, hipertension, 1875, 2400, 2, 4, [baja_en_grasas, vegana], [alto_sodio, dulce], [
    desayuno('Batido de pl�tano y espinacas con leche de almendras.', '1 rebanada de pan integral con aguacate.'),
    merienda_manana('1 pu�ado de nueces.'),
    almuerzo('Lentejas con ensalada verde.', '1/2 taza de arroz integral.'),
    merienda_tarde('1 taza de yogurt de coco con fresas.'),
    cena('Tempeh al horno con esp�rragos y aguacate.')]).
dieta(ketovegana_activa_hipertension, hipertension, 2130, 3000, 3, 6, [vegana, keto], [dulce], [
    desayuno('1 batido verde con espinacas y manzana.', '1 rebanada de pan integral con aguacate.'),
    merienda_manana('1 pu�ado de almendras.'),
    almuerzo('Tofu a la parrilla con esp�rragos al vapor.', '1/2 taza de quinoa.'),
    merienda_tarde('1 yogurt de coco con fresas.'),
    cena('Tempeh al horno con br�coli y aguacate.')]).
dieta(keto_pro_dislipidemia_controlada, dislipidemia, 1500, 1800, 0, 2, [keto, proteica], [mariscos, carne], [
    desayuno('1 tortilla de claras con espinacas.', '1 taza de caf� sin az�car.'),
    merienda_manana('1 pu�ado de nueces.'),
    almuerzo('Pollo a la parrilla con ensalada de espinacas y pepino.', '1/2 taza de quinoa.'),
    merienda_tarde('1 yogurt natural sin az�car.'),
    cena('Pescado a la parrilla con verduras al vapor.')]).
dieta(proteica_balanceada_dislipidemia, dislipidemia, 1650, 2100, 1, 3, [proteica, baja_en_grasas], [carne, alto_sodio], [
    desayuno('Omelette de claras con champi�ones y espinacas.', '1 rebanada de pan integral.'),
    merienda_manana('1 pu�ado de almendras.'),
    almuerzo('Pollo al horno con ensalada de espinacas y tomate.', '1/3 taza de arroz integral.'),
    merienda_tarde('1 yogurt natural bajo en grasa.'),
    cena('Pescado a la parrilla con verduras al vapor.')]).
dieta(vegana_light_dislipidemia, dislipidemia, 1875, 2400, 2, 4, [baja_en_grasas, vegana], [alto_sodio, dulce], [
    desayuno('Batido de pl�tano y espinacas con leche de almendras.', '1 rebanada de pan integral con aguacate.'),
    merienda_manana('1 pu�ado de nueces.'),
    almuerzo('Lentejas con ensalada verde.', 'taza de arroz integral.'),
    merienda_tarde('1 taza de yogurt de coco con fresas.'),
    cena('Tofu al horno con esp�rragos y aguacate.')]).
dieta(ketovegana_dislipidemia_activa, dislipidemia, 2130, 3000, 3, 6, [vegana, keto], [dulce], [
    desayuno('1 batido verde con espinacas, manzana y semillas de ch�a.', '1 rebanada de pan integral con aguacate.'),
    merienda_manana('1 pu�ado de almendras.'),
    almuerzo('Tofu a la parrilla con esp�rragos al vapor.', '1/2 taza de quinoa.'),
    merienda_tarde('1 yogurt de coco con fresas.'),
    cena('Tempeh al horno con br�coli y aguacate.')]).



% Regla para verificar coincidencias exactas en la lista de tipos de alimentación
tipos_alimentacion_compatibles([], _).
tipos_alimentacion_compatibles([Tipo|Resto], Alimentacion) :-
    member(Tipo, Alimentacion),
    tipos_alimentacion_compatibles(Resto, Alimentacion).

% Regla para verificar restricciones alimentarias
restricciones_compatibles([], _).
restricciones_compatibles([Restriccion|Resto], Restricciones) :-
    member(Restriccion, Restricciones),
    restricciones_compatibles(Resto, Restricciones).

% Regla para imprimir el plan de comidas de la dieta
imprimir_comidas([desayuno(Desayuno, Desayuno2)|Resto]) :-
    format('Desayuno:\n~w\n~w\n\n', [Desayuno, Desayuno2]),
    imprimir_comidas(Resto).
imprimir_comidas([desayuno(Desayuno)|Resto]) :-
    format('Desayuno:\n~w\n\n', [Desayuno]),
    imprimir_comidas(Resto).
imprimir_comidas([merienda_manana(Merienda, Merienda2)|Resto]) :-
    format('Merienda Ma�ana:\n~w\n~w\n\n', [Merienda, Merienda2]),
    imprimir_comidas(Resto).
imprimir_comidas([merienda_manana(Merienda)|Resto]) :-
    format('Merienda Ma�ana:\n~w\n\n', [Merienda]),
    imprimir_comidas(Resto).
imprimir_comidas([almuerzo(Almuerzo, Almuerzo2)|Resto]) :-
    format('Almuerzo:\n~w\n~w\n\n', [Almuerzo, Almuerzo2]),
    imprimir_comidas(Resto).
imprimir_comidas([almuerzo(Almuerzo)|Resto]) :-
    format('Almuerzo:\n~w\n\n', [Almuerzo]),
    imprimir_comidas(Resto).
imprimir_comidas([merienda_tarde(Merienda)|Resto]) :-
    format('Merienda Tarde:\n~w\n\n', [Merienda]),
    imprimir_comidas(Resto).
imprimir_comidas([cena(Cena, Cena2)|Resto]) :-
    format('Cena:\n~w\n~w\n\n', [Cena, Cena2]),
    imprimir_comidas(Resto).
imprimir_comidas([cena(Cena)|Resto]) :-
    format('Cena:\n~w\n\n', [Cena]),
    imprimir_comidas(Resto).

% Regla para encontrar la dieta adecuada según los parámetros
recomendar_dieta(Condicion, MinCalorias, MaxCalorias, EjerMin, EjerMax, TiposAlimentacion, Restricciones) :-
    dieta(Nombre, Condicion, MinCal, MaxCal, MinEjer, MaxEjer, Alimentacion, RestriccionAlimentos, Comidas),
    MinCal =< MinCalorias, MaxCal >= MaxCalorias,
    EjerMin >= MinEjer, EjerMax =< MaxEjer,
    tipos_alimentacion_compatibles(TiposAlimentacion, Alimentacion),
    restricciones_compatibles(Restricciones, RestriccionAlimentos),
    format('Dieta: ~w\n\n', [Nombre]),
    imprimir_comidas(Comidas).




% recomendar_dieta(diabetes, 1500, 1800, 0, 2, [keto, proteica],[mariscos, carne]).
% recomendar_dieta(diabetes, 1650, 2100, 1, 3, [proteica,baja_en_grasas], [carne, alto_sodio]).
% recomendar_dieta(diabetes, 1875, 2400, 2, 4, [baja_en_grasas, vegana],[alto_sodio, dulce]).
% recomendar_dieta(diabetes, 2130, 3000, 3, 6, [vegana, keto], [dulce]).
% recomendar_dieta(sobrepeso, 1500, 1800, 0, 2, [keto, proteica],[mariscos, carne]).
% recomendar_dieta(sobrepeso, 1650, 2100, 1, 3, [proteica,baja_en_grasas], [carne, alto_sodio]).
% recomendar_dieta(sobrepeso, 1875, 2400, 2, 4, [baja_en_grasas, vegana],[alto_sodio, dulce]).
% recomendar_dieta(sobrepeso, 2130, 3000, 3, 6, [vegana, keto],[dulce]).
% recomendar_dieta(hipertension, 1500, 1800, 0, 2, [keto, proteica],[mariscos, carne]).
% recomendar_dieta(hipertension, 1650, 2100, 1, 3,[proteica, baja_en_grasas], [carne, alto_sodio]).
% recomendar_dieta(hipertension, 1875, 2400, 2, 4, [baja_en_grasas,vegana], [alto_sodio, dulce]).
% recomendar_dieta(hipertension, 2130,3000, 3, 6, [vegana, keto], [dulce]).
% recomendar_dieta(dislipidemia,1500, 1800, 0, 2, [keto, proteica], [mariscos, carne]).
% recomendar_dieta(dislipidemia, 1650, 2100, 1, 3, [proteica,baja_en_grasas], [carne, alto_sodio]).
% recomendar_dieta(dislipidemia,1875, 2400, 2, 4, [baja_en_grasas, vegana], [alto_sodio, dulce]).
% recomendar_dieta(dislipidemia, 2130, 3000, 3, 6, [vegana, keto],[dulce]).
