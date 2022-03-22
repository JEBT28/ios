import Foundation

/*
2.3.18. Un número cuadrado perfecto es el producto de multiplicar un entero
por sí mismo. Imprima los N cuadrados perfectos.
*/

func imprimirNumCuadradosPerfectos(num:Int)-> Void {

    for x in 1...num {
        print("\(x * x)");
    }

}

imprimirNumCuadradosPerfectos(num:2);

imprimirNumCuadradosPerfectos(num:5);


