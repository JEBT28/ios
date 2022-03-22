import Foundation

/*2.3.20. Dado N, dibuje una pirámide de asteriscos. La pirámide 
debe tener N líneas. En la i-ésima línea debe haber N-i espacios,
seguido de i*2-1 asteriscos.
*/


func dibujarPiramide(n: Int){
  for i in 1...n{
    let espacios = n - i;
    let asteriscos = i * 2 - 1;
    let piramide = String(repeating: " ", count: espacios) + 
                   String(repeating: "*", count: asteriscos);
    print(piramide);
  }
}
print("Resultados")
dibujarPiramide(n: 1)
dibujarPiramide(n: 2)
dibujarPiramide(n: 3)
dibujarPiramide(n: 4)

