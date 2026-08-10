% Hechos: relación entre ciudades
ciudad(bogota).
ciudad(medellin).
ciudad(cali).
ciudad(cartagena).
ciudad(manizales).
ciudad(barranquilla).
ciudad(pasto).
ciudad(monteria).

% Hechos: vuelos directos
vuelo(bogota, medellin).
vuelo(medellin, cartagena).
vuelo(cali, bogota).
vuelo(bogota, cartagena).
vuelo(manizales, cartagena).
vuelo(medellin, barranquilla).
vuelo(pasto, bogota).
vuelo(bogota, pasto).

escala(X,Y):-vuelo(X,Z),vuelo(Z,Y).

viaje(X,Y):-vuelo(X,Y).
viaje(X,Y):-vuelo(X,Z),vuelo(Z,Y).


destinos(X,Y):-vuelo(X,Y).





perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).

tiene_perro(X,Y):-dueno(X,Y),perro(Y).

tiene_gato(X,Y):-dueno(X,Y),gato(Y).

multiple(X):-dueno(X,Y),dueno(X,Z),Y\=Z.

amante_animales(X,Y):-dueno(X,Y),perro(Y).
amante_animales(X,Y):-dueno(X,Y),gato(Y).


mascota_compartida(X,Y):-dueno(X,Y),dueno(X,Y),Y=Y.

% Arreglar ultimos 2 ejercicios.



