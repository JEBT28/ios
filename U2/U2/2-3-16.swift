import Foundation

/*2.3.16. Dado un caracter, determine si es vocal, consonante, dígito, operador
aritmético u otro
*/

func validarCaracter(c : Character) -> Void {

    if c.isNumber {
        print("Es numero")
    } else if c.isLetter && ["a","e","i","o","u"].contains(c.lowercased()) {
        print("Es vocal")
    } else if c.isLetter && !["a","e","i","o","u"].contains(c.lowercased()) {
        print("Es consonante")
    } else if ["+","-","*","/","%"].contains(c) {
        print("Es operador aritmetico")
    } else {
        print("Es caracter especial")
    }

}

validarCaracter(c: "4");
validarCaracter(c: "b");
validarCaracter(c: "E");
validarCaracter(c: "+");
validarCaracter(c: "}");
