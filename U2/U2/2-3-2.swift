import Foundation

/*2.3.2. Se tiene el tiempo de un recorrido, almacenado en tres variables: una
para la hora, otra para los minutos y otra para los segundos; así también, se
tiene la distancia (en metros) en otra variable. Despliegue la velocidad en
metros/segundo, kilómetros/hora y millas/hora.
*/

func calcularVelMtsXSeg(distancia:Double,horas:Double,minutos:Double,segundos:Double) -> Double
{
   var segundosTotales = segundos + (minutos*60) + (horas * 60 * 60);
    var mtsXseg = distancia / segundosTotales;
    return mtsXseg;
}

func calcularVelKmXHr(distancia:Double,horas:Double,minutos:Double,segundos:Double) -> Double
{
   var hrsTotales:Double = horas + ((minutos + (segundos / 60)) / 60); 
    var kmXHr:Double = (distancia / 1000) / hrsTotales;
    return kmXHr;
}

func calcularVelMillXHr(distancia:Double,horas:Double,minutos:Double,segundos:Double) -> Double
{
   var hrsTotales:Double = horas + ((minutos + (segundos / 60)) / 60); 
    var millXHr:Double = (distancia / 1609) / hrsTotales;
    return millXHr;
}


var distancia:Double=2500,horas:Double=5,minutos:Double=56,segundos:Double=23;

var mtsXseg:Double = calcularVelMtsXSeg(distancia:distancia,horas:horas,minutos:minutos,segundos:segundos);
var kmXhrs:Double = calcularVelKmXHr(distancia:distancia,horas:horas,minutos:minutos,segundos:segundos);
var millXhrs:Double = calcularVelMillXHr(distancia:distancia,horas:horas,minutos:minutos,segundos:segundos);
print("Mts/seg:  \(mtsXseg)\nKM/hr:  \(kmXhrs)\nMill/hr:  \(millXhrs)" )

distancia=50000;horas=1;minutos=35;segundos=56;

mtsXseg = calcularVelMtsXSeg(distancia:distancia,horas:horas,minutos:minutos,segundos:segundos);
kmXhrs = calcularVelKmXHr(distancia:distancia,horas:horas,minutos:minutos,segundos:segundos);
millXhrs = calcularVelMillXHr(distancia:distancia,horas:horas,minutos:minutos,segundos:segundos);
print("Mts/seg:  \(mtsXseg)\nKM/hr:  \(kmXhrs)\nMill/hr:  \(millXhrs)" )
