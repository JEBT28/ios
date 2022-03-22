import Foundation

/*2.3.40. Suponga que se encuentra programando un juego
 en el cual el personaje camina en una cuadrícula, es decir, 
 puede desplazarse un paso a la vez, ya sea hacia la derecha, 
 izquierda, arriba o abajo. La posición inicial siempre 
 es (0, 0) y mediante un arreglo que contenga los pasos, 
 debe calcular la posición final del personaje después de 
 dar dichos pasos. Utilice una enumeración para definir cada 
 una de las cuatro direcciones.
*/

enum Direccion {
    case derecha
    case izquierda
    case arriba
    case abajo
}

func calcularPosicionFinal(posicionInicial: (Int, Int), pasos: [Direccion]) -> (Int, Int) {
    var posicionFinal = posicionInicial
    for paso in pasos {
        switch paso {
        case .derecha:
            posicionFinal.0 += 1
        case .izquierda:
            posicionFinal.0 -= 1
        case .arriba:
            posicionFinal.1 += 1
        case .abajo:
            posicionFinal.1 -= 1
        }
    }
    return posicionFinal
}

var posicionInicial = (0, 0)
var pasos = [Direccion.arriba, Direccion.arriba, Direccion.izquierda, Direccion.abajo, Direccion.izquierda]

print("Posicion final: \(calcularPosicionFinal(posicionInicial: posicionInicial, pasos: pasos))")
pasos = [Direccion.arriba, Direccion.arriba, Direccion.izquierda, Direccion.abajo, 
        Direccion.izquierda,Direccion.abajo,Direccion.abajo,Direccion.derecha,
        Direccion.derecha,Direccion.abajo,Direccion.derecha]
print("Posicion final: \(calcularPosicionFinal(posicionInicial: posicionInicial, pasos: pasos))")
posicionInicial = (5,2)
pasos = [Direccion.arriba, Direccion.derecha,Direccion.arriba, Direccion.derecha,
        Direccion.arriba, Direccion.derecha,Direccion.abajo, Direccion.derecha]
print("Posicion final: \(calcularPosicionFinal(posicionInicial: posicionInicial, pasos: pasos))")
