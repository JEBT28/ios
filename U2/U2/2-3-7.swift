import Foundation

/*2.3.7. Suponga que usted tiene x manzanas. Lizbeth intercambia 3 naranjas
por 5 manzanas. ¿Cuántas naranjas puede obtener de Lizbeth y cuantas
manzanas le quedarían después del intercambio? Imprima los resultados.
*/

func calcularIntercambioFrutas(x: Int) -> (Int,Int) {

    let naranjas = ( x / 5 ) * 3;
    let manzanas = x % 5 ; 

    return (manzanas,naranjas);
}

var (manzanas,naranjas) = calcularIntercambioFrutas(x: 17);
print("Manzanas : \(manzanas) Naranjas : \(naranjas)")

(manzanas,naranjas) = calcularIntercambioFrutas(x: 25);
print("Manzanas : \(manzanas) Naranjas : \(naranjas)")

(manzanas,naranjas) = calcularIntercambioFrutas(x: 4);
print("Manzanas : \(manzanas) Naranjas : \(naranjas)")