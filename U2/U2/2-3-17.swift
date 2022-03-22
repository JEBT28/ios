import Foundation

/*
2.3.17. En base al mes y día de nacimiento, determine el signo zodiacal de una
persona.
*/

func signoZodiacal(mes : Int , dia : Int) -> Void {

    if (mes == 12 && dia >= 22) || (mes == 1 && dia <= 19) {
        print("Capricornio")
    } else if (mes == 1 && dia >= 20) || (mes == 2 && dia <= 18) {
        print("Acuario")
    } else if (mes == 2 && dia >= 20) || (mes == 3 && dia <= 20) {
        print("Picis")
    } else if (mes == 3 && dia >= 21) || (mes == 4 && dia <= 19) {
        print("Aries")
    } else if (mes == 4 && dia >= 20) || (mes == 5 && dia <= 20) {
        print("Tauro")
    } else if (mes == 5 && dia >= 21) || (mes == 6 && dia <= 20) {
        print("Geminis")
    } else if (mes == 6 && dia >= 21) || (mes == 7 && dia <= 22) {
        print("Cancer")
    } else if (mes == 7 && dia >= 23) || (mes == 8 && dia <= 22) {
        print("Leo")
    }  else if (mes == 8 && dia >= 23) || (mes == 9 && dia <= 22) {
        print("Virgo")
    } else if (mes == 9 && dia >= 23) || (mes == 10 && dia <= 22) {
        print("Libra")
    } else if (mes == 10 && dia >= 23) || (mes == 11 && dia <= 21) {
        print("Escorpio")
    } else if (mes == 11 && dia >= 22) || (mes == 12 && dia <= 21) {
        print("Sagitario")
    } else {
        print("No valido")
    }
}

signoZodiacal(mes : 8 , dia : 28 ) //Personal
signoZodiacal(mes : 6 , dia : 28 ) //Elon Musk
signoZodiacal(mes : 5 , dia : 14 ) //Mark Zuckerberg
signoZodiacal(mes : 2 , dia : 24 ) //Steve Jobs
signoZodiacal(mes : 16 , dia : 50 ) //No valido

