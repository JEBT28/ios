import Foundation

/*2.3.31. Dada una matriz cuadrada A, imprima el resultado de sumar los
elementos que no corresponden a la periferia de la matriz.
*/

let a:[[Int]] = [[3,5,8,9,2],[1,4,2,1,0],[4,5,4,8,1],[9,8,1,0,3],[7,2,1,1,3]];

let aux = a.count - 2
var sum = 0;

for x in 1...aux {
    for y in 1...aux {
        sum = sum + a[x][y]
    }
}

print("suma: \(sum)")