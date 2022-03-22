import Foundation

/*2.3.32. Escriba un método que reciba dos valores enteros y devuelva el mayor
de ellos. Utilice el _ para ignorar el nombre externo de cada parámetro.
*/


func mayor(_ a: Int, _ b: Int) -> Int {

    return a > b ? a : b;
   
}

var m = mayor(2,5)
print(m);


m = mayor(8,3)
print(m);