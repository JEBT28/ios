import Foundation

/*
2.3.23. Convierta un número de decimal a binario con el método de escalera.
*/

func imprimirBinario(numero : Int) {

    var n = numero

    var num = ""

    while n > 0 {

        if n % 2 == 0 {
             num = "0" + num

        } else {
            num = "1" + num
        }

        n = n / 2        
    }

    print(num)
}


imprimirBinario(numero:78)
imprimirBinario(numero:92)
imprimirBinario(numero:2015)