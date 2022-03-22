import Foundation

/*2.3.27. Dados los vectores A y B, imprima todos los elementos de B que se
encuentren en A. Si no existen elementos en común, no debe imprimir nada.
*/

var a:[Int] = [1,2,3,10,100]
var b:[Int] = [1,2,3,4,5,6]

for x in a {

    if b.contains(x) {
        print(x)
    } 
}

b = [5,2,3,10,13]

for x in a {

    if b.contains(x) {
        print(x)
    } 
}

b = [5,6]

for x in a {

    if b.contains(x) {
        print(x)
    } 
}




