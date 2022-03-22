import Foundation
/*2.3.3. Dadas la suma y la diferencia entre dos números, encuentre los valores
de dichos números y almacénelos en variables llamadas a y b. Imprima los
resultados.
*/

func obtenerValores (sum:Int, dif:Int)->(Int,Int)
{
    var a = 0, b = 0;
    for x in 0...sum
    {
        a = x;
        b = sum - a;
        if (a - b) == dif {
            break 
        }
    }
    return (a,b)
}


var a = 0, b = 0;
(a,b) = obtenerValores(sum:16,dif:4);
print("a: \(a) b: \(b)");

(a,b) = obtenerValores(sum:11,dif:3);
print("a: \(a) b: \(b)");

(a,b) = obtenerValores(sum:4,dif:2);
print("a: \(a) b: \(b)");