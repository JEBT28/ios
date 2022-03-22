import Foundation

/*2.3.34. Programe un método que reciba cuatro parámetros: hora inicial,
minutos iniciales, hora final y minutos finales. La función debe calcular los
minutos transcurridos entre los dos horarios compuestos de horas y minutos.
Si los minutos se omiten en la invocación, se considerará que el valor es cero.
*/

func diferencia(hi: Int, mi: Int = 0, hf: Int, mf: Int = 0) -> Int {
    var tmp1 = (hi * 60) + mi;
    var tmp2 = (hf * 60) + mf;

    return tmp2 - tmp1;
}

var dif = diferencia(hi:12,mi:3,hf:13,mf:10);
print(dif);

dif = diferencia(hi:8,mi:10,hf:17,mf:30);
print(dif);