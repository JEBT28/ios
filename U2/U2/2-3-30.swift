import Foundation

/*2.3.30. Dada una matriz cuadrada A, almacene los elementos de la diagonal
principal y los de la diagonal inversa, en vectores llamados DP y DI
respectivamente.
*/

let a:[[Int]] = [[3,5,8,2],[2,7,9,5],[2,8,9,2],[4,6,7,1]];

var dp:[Int] = [], di:[Int] = [];

var aux = a.count - 1

for x in 0...aux {
    dp.append(a[x][x])
    di.append(a[x][aux - x])
}

print(dp)
print(di)

