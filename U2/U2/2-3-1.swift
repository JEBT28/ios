import Foundation

/*2.3.1. Se tiene la edad de Loky (en años perro) en una variable. Determine la
edad de Loky en años humanos, considerando que 1 año humano equivale a 7
años perro.*/

func imprimirEdadAñosHumano(edadAñosPerro:Int){
let añosPerro = 7;

let edadAñosHumano = edadAñosPerro/añosPerro;

print("Años perro: \(edadAñosPerro) años humanos: \(edadAñosHumano) ");

}

var edadLokyPerro = 50;
imprimirEdadAñosHumano(edadAñosPerro : edadLokyPerro);

edadLokyPerro = 14;
imprimirEdadAñosHumano(edadAñosPerro : edadLokyPerro);

edadLokyPerro = 32;
imprimirEdadAñosHumano(edadAñosPerro : edadLokyPerro);
