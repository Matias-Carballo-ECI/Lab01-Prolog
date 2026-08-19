nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).


reprueba(X) :- nota(X, N), N < 3.0.

aprueba(X) :- nota(X, N), N >= 3.0.

rango(X, Min, Max) :- nota(X, N), N >= Min, N =< Max.

clasificacion(X, reprobado) :- nota(X, N), N >= 0.0, N =< 2.9.
clasificacion(X, aprobado) :- nota(X, N), N >= 3.0, N =< 3.9.
clasificacion(X, notable) :- nota(X, N), N >= 4.0, N =< 4.4.
clasificacion(X, excelente) :- nota(X, N), N >= 4.5, N =< 5.0.


distancia((X1, Y1), (X2, Y2), D) :- 
    D is sqrt((X2 - X1)*(X2 - X1) + (Y2 - Y1)*(Y2 - Y1)).


distancia_total([], 0).
distancia_total([_], 0).
distancia_total([P1, P2 | Resto], Total) :- 
    distancia(P1, P2, D),
    distancia_total([P2 | Resto], RestoD),
    Total is D + RestoD.
