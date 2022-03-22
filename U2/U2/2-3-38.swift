import Foundation

/*2.3.38. Programe un método recursivo que calcule la multiplicación de dos
números dados como parámetros por referencia (A y B). Deberá utilizar el
método ruso para multiplicar, el cual (en papel) consiste en escribir una serie
de pares números bajo dos columnas. La primera columna la encabeza el valor
A y la segunda columna la encabeza el valor B. El valor A se divide entre dos y
debajo se coloca el cociente entero de la división (ignorando el residuo), repetir
sucesivamente hasta llegar al resultado 1. Por cada vez que se divide la columna
A, deberá multiplicar el valor de la columna B por dos. Al final se suman todos
los valores bajo la columna B, que se encuentren al nivel de un numero impar
de la columna A. Cree e invoque una función booleana de apoyo, que determine
si un numero es par. Caso de ejemplo: 27 x 82 = 2214
*/
func mult(_ a: Int,_ b: Int) -> Void {
    var temp1 = a, temp2 = b
    
    if temp1 == 1 {
        acc = acc + temp2
    }
    else if temp1 % 2 == 0 {   
        temp1 = temp1 / 2
        temp2 = temp2 * 2
        mult(temp1,temp2)
    }
    else { 
        temp1 = temp1 / 2
        acc = acc + temp2
        temp2 = temp2 * 2
        mult(temp1,temp2)
    }
}

var acc = 0;
mult(27,82)
print(acc) 





