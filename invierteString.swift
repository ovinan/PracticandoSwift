import Foundation

/*
 * Reto #6
 * INVIRTIENDO CADENAS
 * Fecha publicación enunciado: 07/02/22
 * Fecha publicación resolución: 14/02/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa que invierta el orden de una cadena de texto.
 * NOTA: sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 */

func invierteString(texto: String) -> String {
    let longitudTexto = texto.count - 1
    var cadenaInvertida = ""
    let arrayTexto = Array(texto)
    for indice in 0...longitudTexto {
        cadenaInvertida += "\(arrayTexto[longitudTexto - indice])"
    }
    return cadenaInvertida
}

print(invierteString(texto: "Abracadabra"))