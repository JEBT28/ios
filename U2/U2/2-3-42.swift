import Foundation

/*2.3.42. Tiene un arreglo de diccionarios. 
Cada diccionario tiene un par de valores, 
uno con el apellido y otro con el nombre de 
una persona. Debe entregar un arreglo que 
contenga cada nombre completo.
*/


var diccionarios: [[String: String]] = [
    ["Apellido": "Perea", "Nombre": "Alicia"],
    ["Apellido": "Flores", "Nombre": "Norma"],
    ["Apellido": "Noriega", "Nombre": "Roberto"]
]

var nombresCompletos: [String] = []

for diccionario in diccionarios {
    nombresCompletos.append(diccionario["Nombre"]! +
                     " " + diccionario["Apellido"]!)
}

print(nombresCompletos)