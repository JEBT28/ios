import Foundation

/*2.3.12. Antes de preparar el desayuno, debemos saber
si aún se pueden cocinar los ingredientes. Considere que
los blanquillos se echan a perder después de tres semanas
(21 días) y el tocino después de una semana (7 días).
Dados los días de los blanquillos y el tocino en su refrigerador, 
determine si ambos se pueden cocinar, o si hay alguno que deba desecharse.
*/

func comprobarIngredientes(blanquillos: Int, tocino:Int) {

    if blanquillos > 21 && tocino > 7 {
        print("Debe desechar ambos")
    } else if blanquillos <= 21 && tocino > 7 {
        print("Debe desechar el tocino")
    } else if blanquillos > 21 && tocino <= 7 {
        print("Debe desechar los blanquillos")
    } else {
        print("Ambos se pueden cocinar")
    }
}

comprobarIngredientes(blanquillos : 2 ,tocino : 3)
comprobarIngredientes(blanquillos : 20 ,tocino : 9)
comprobarIngredientes(blanquillos : 23 ,tocino : 11)
comprobarIngredientes(blanquillos : 25 ,tocino : 6)





