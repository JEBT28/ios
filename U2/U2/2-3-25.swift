import Foundation

/*2.3.25. Imprima los elementos de un vector en orden inverso al que se
encuentran almacenados
*/

var arr:[Int] = [1,2,3,10,100]
arr.reverse()

var reversed = arr.map { String($0)  } .joined(separator: ", ")

print(reversed)

arr = [10,12,33,11,1,8]
arr.reverse() 

reversed = arr.map { String($0)  } .joined(separator: ", ")

print(reversed)