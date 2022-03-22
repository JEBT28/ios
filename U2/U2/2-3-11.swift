import Foundation

/*
2.3.11. Se tienen tres variables (a, b, c). Imprima la leyenda “Al menos dos
variables son iguales” o bien la leyenda “Todas las variables son diferentes”,
según sea el caso.
*/

func validarVariables(a:Int,b:Int,c:Int) -> Void{
    if a == b || a == c || b == c
    {
        print("Al menos dos variables son iguales");
    }
    else
    {
        print("Todas las variables son diferentes")
    }
}

validarVariables( a : 1 , b : 2, c : 3);

validarVariables( a : 1 , b : 2, c : 1);

validarVariables( a : 8 , b : 8, c : 8); 

