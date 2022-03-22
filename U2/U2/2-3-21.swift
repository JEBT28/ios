import Foundation

/*2.3.21. Imprima los primeros N números de la serie de Fibonacci.
Los primeros dos números de la serie siempre son 1, el resto son la
suma de los dos anteriores. Imprima la serie en un solo renglón con
los valores separados por coma.
*/

func imprimirFibonacci(n: Int){
  var fibonacci = [1,1];
  for i in 2...n-1{
    fibonacci.append(fibonacci[i-2] + fibonacci[i-1]);
  }
  print(fibonacci);
}

imprimirFibonacci(n:3)
imprimirFibonacci(n:6)
imprimirFibonacci(n:10)