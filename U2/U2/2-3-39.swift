import Foundation

/*2.3.39. Escriba una función que reciba tres valores enteros y devuelva al mismo
tiempo el mayor y el menor de ellos. Utilice el _ para ignorar el nombre externo
de cada parámetro.
*/

func mayorMenor(_ a: Int , _ b: Int,_ c: Int ) -> (Int, Int) {
    var aux = [a,b,c];
    let mayor = aux.max()!;
    let menor = aux.min()!;

    return (mayor, menor);
}

var (mayor, menor) = mayorMenor(2,5,8);
print("Mayor: \(mayor) Menor: \(menor)")

(mayor, menor) = mayorMenor(6,3,6);
print("Mayor: \(mayor) Menor: \(menor)")