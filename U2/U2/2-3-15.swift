import Foundation

/*
2.3.15. Determine si un punto o coordenada (x, y) se encuentra dentro de un
rectángulo definido por las coordenadas de la esquina inferior izquierda (x1, y1)
y la esquina superior derecha (x2, y2).
*/


func validarCoordenada(x:Int,y:Int,x1:Int,y1:Int,x2:Int,y2:Int) -> Void {

    let xEsValido = x >= x1 && x <= x2;
    let yEsValido = y >= y1 && y <= y2;

    if xEsValido && yEsValido {
        print("Dentro")
    } else {
        print("Fuera")
    }
}

validarCoordenada(x:1,y:2,x1:1,y1:1,x2:3,y2:3)

validarCoordenada(x:2,y:2,x1:1,y1:1,x2:3,y2:3)

validarCoordenada(x:4,y:4,x1:0,y1:0,x2:3,y2:4)

validarCoordenada(x:0,y:4,x1:1,y1:0,x2:4,y2:3)