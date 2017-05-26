w(0,0).
w(0,1). w(1,1). w(2,1). w(3,1).         w(5,1).
        w(1,2).         w(3,2).         w(5,2).
        w(1,3).         w(3,3).         w(5,3).
w(0,4). w(1,4). w(2,4). w(3,4).         w(5,4).
                w(2,5). w(3,5). w(4,5).

d(X0,Y0,X,Y) :- proximo_w(X0,Y0,X,Y), w(X,Y).
proximo_w(X0,Y0,X0,Y) :- Y is Y0+1.
proximo_w(X0,Y0,X,Y0) :- X is X0+1.
proximo_w(X0,Y0,X0,Y) :- Y is Y0-1.
proximo_w(X0,Y0,X,Y0) :- X is X0-1.

ir(X,Y,X,Y,Camino,Camino).
ir(X0,Y0,X,Y,Hasta,Camino) :- d(X0,Y0,X1,Y1),\+ memberchk(w(X1,Y1), Hasta),ir(X1,Y1,X,Y,[w(X1,Y1)|Hasta],Camino).
