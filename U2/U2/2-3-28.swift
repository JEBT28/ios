import Foundation

/*2.3.28. Extraiga cada digito, de izquierda a derecha, de un número dado en n
y almacénelo en un vector. Resuélvalo aritméticamente, es decir, sin convertir
n a cadena de caracteres.
*/

var n = 12345
var arr:[Int] = []

while n != 0 {
    arr.append(n % 10)
    n = n / 10
}
arr.reverse()
print(arr)

n = 20143831
arr = []

while n != 0 {
    arr.append(n % 10)
    n = n / 10
}
arr.reverse()
print(arr)




