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

tiene_perro(X) :- dueno(X, Y), perro(Y).

tiene_gato(X) :- dueno(X, Y), gato(Y).

multiple(X) :- dueno(X, Y), dueno(X, Z), Y \= Z.

amante_animales(X) :- tiene_perro(X), tiene_gato(X).

mascota_compartida(X, Y) :- dueno(X, M), dueno(Y, M), X \= Y.

tipo_mascota(X, perro) :- tiene_perro(X).
tipo_mascota(X, gato) :- tiene_gato(X).
tipo_mascota(X, ave) :- dueno(X, Y), ave(Y).
