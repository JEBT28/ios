import Foundation

/*2.3.37. Escriba un método que calcule la factorial de un número dado como
parámetro. Utilice recursividad.
*/

func factorial(_ n: Int) -> Int {

    if n == 0{
        return 1;
    }
    else {
        return n * factorial(n - 1) 
    }
}

print(factorial(3))
print(factorial(5))
print(factorial(10))