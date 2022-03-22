import Foundation

/*
2.3.22. Dado un número en x, determine si es un número primo. Los números
primos solo pueden dividirse entre 1 y entre sí mismos (división exacta).
*/

func esPrimo(n : Int){

    if n <= 1 {
        print("No es primo")
        return
    }

     if n == 1 {
        print("Es primo")
        return
    }

    for x in 2...n {
        if x == n {
            continue
        }
        if n % x == 0 {
            print("No es primo")
            return
        }
    }

    print("Es primo")

}

esPrimo(n:2)

esPrimo(n:3)

esPrimo(n:15)

esPrimo(n:1)







