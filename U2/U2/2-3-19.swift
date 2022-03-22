import Foundation

/*2.3.19. Imprima la serie de números de 1 a N alternando su orden, es decir, el
primer número siempre es el 1, seguido de N, luego 2, luego N-1 y así
sucesivamente. La serie debe imprimirse en un solo renglón, separando los
números con espacios.
*/

func imprimirSerie(n:Int)-> Void {
    var down = n , up = 1

    for x in 1...n {
        if x % 2 == 0 {
            print( down ,  terminator:" ")
            down = down - 1 
        }
        else {
            print( up ,  terminator:" ")
            up = up + 1
        }
    }
    print("")
}

imprimirSerie(n:4);
imprimirSerie(n:9);


