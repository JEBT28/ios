import Foundation

/*2.3.41. 1) Defina una enumeración con tres miembros: piedra, papel, tijera.
2) Defina otra enumeración con tres miembros: gana, pierde, empata.
3) Escriba una función llamada juego que reciba lo que “elige” cada uno de los
jugadores para jugar y que devuelva la respuesta correspondiente (de la
segunda enumeración), respecto al primer jugador. Notas: Siempre juegan dos
jugadores. No utilice valoraciones numéricas.
*/

enum Juego {
    case piedra
    case papel
    case tijera
}

enum Resultado {
    case gana
    case pierde
    case empata
}

func juego(jugador1: Juego, jugador2: Juego) -> Resultado {
    switch jugador1 {
    case .piedra:
        if jugador2 == .piedra {
            return .empata
        } else if jugador2 == .papel {
            return .pierde
        } else {
            return .gana
        }
    case .papel:
        if jugador2 == .piedra {
            return .gana
        } else if jugador2 == .papel {
            return .empata
        } else {
            return .pierde
        }
    case .tijera:
        if jugador2 == .piedra {
            return .pierde
        } else if jugador2 == .papel {
            return .gana
        } else {
            return .empata
        }
    }
}

print("piedra, tijera, Resultado: \(juego(jugador1: .piedra, jugador2: .tijera))")
print("piedra, papel, Resultado: \(juego(jugador1: .piedra, jugador2: .papel))")
print("tijera, tijera, Resultado: \(juego(jugador1: .tijera, jugador2: .tijera))")