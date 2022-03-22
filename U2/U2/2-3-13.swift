import Foundation

/*2.3.13. Dado un año, imprima si es o no es bisiesto. Las reglas (para este
ejercicio) para determinar un año bisiesto, son las siguientes:
• Divisible entre 4
• Cada inicio de siglo, si el año es divisible entre 400
*/

func validarAñoBisiesto(año: Int) -> Void {

    if año % 100 == 0 && año % 400 == 0 {
        print("Es bisiesto")
    }
    else if año % 4 == 0 && (año % 100 != 0 && año % 400 != 0)  {
        print("Es bisiesto")
    }
    else {
        print("No es bisiesto")
    }
}

validarAñoBisiesto(año: 2000);
validarAñoBisiesto(año: 1985);
validarAñoBisiesto(año: 1900);
validarAñoBisiesto(año: 2016);
