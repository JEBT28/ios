import Foundation

/*2.3.43. Se tienen dos tuplas, cada una representa 
el numerador y el denominador de una fracción (en ese 
orden dentro de la tupla). Escriba una función que 
reciba ambas tuplas y que devuelva otra con la fracción 
resultante. Ejemplo: f1 = (34, 3); f2 = (11, 2); 
suma = (101, 6). Simplifique el resultado (cuando aplique)
*/

func suma(f1: (Int, Int), f2: (Int, Int)) -> (Int, Int) {
    var resultado: (Int, Int) = (0, 0)
    resultado.0 = f1.0 * f2.1 + f2.0 * f1.1
    resultado.1 = f1.1 * f2.1


    for x in 2...10 {
        while resultado.0 % x == 0 && resultado.1 % x == 0   {
            resultado.0 /= x
            resultado.1 /= x
        }
    }
    

    return resultado
}

var f1: (Int, Int) = (5, 8)
var f2: (Int, Int) = (17, 9)
var resultado: (Int, Int) = (0, 0)

resultado = suma(f1: f1, f2: f2);
print(resultado)

f1 = (1,5)
f2=(1,6)
resultado = suma(f1: f1, f2: f2);
print(resultado)

f1 = (3,12)
f2=(3,6)
resultado = suma(f1: f1, f2: f2);
print(resultado)