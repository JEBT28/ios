import Foundation

/*2.3.33. Escriba un método que reciba un número entero y devuelva un vector
con los valores de 1 a N
*/


func arreglo(_ n: Int) -> [Int] {

    var tmp: [Int] = [];
    for x in 1...n {
        tmp.append(x)
    }
    return tmp;
}

var arr = arreglo(8)
print(arr);


arr = arreglo(3)
print(arr);