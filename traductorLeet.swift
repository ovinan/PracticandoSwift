/*
 *  EJERCICIO/EJEMPLO EXTRAIDO DE UNO DE LOS RETOS DE MOUREDEV:
 * https://github.com/mouredev/retos-programacion-2023/tree/main/Retos/Reto%20%231%20-%20EL%20LENGUAJE%20HACKER%20%5BF%C3%A1cil%5D
 *
 * Escribe un programa que reciba un texto y transforme lenguaje natural a
 * "lenguaje hacker" (conocido realmente como "leet" o "1337"). Este lenguaje
 *  se caracteriza por sustituir caracteres alfanuméricos.
 * - Utiliza esta tabla (https://www.gamehouse.com/blog/leet-speak-cheat-sheet/)
 *   con el alfabeto y los números en "leet".
 *   (Usa la primera opción de cada transformación. Por ejemplo "4" para la "a")
 */

import Foundation

func traductorLeet(texto: String) -> String {
    // Declaramos en una constante la traduccion de cada letra,
    // que previamente habremos pasado a mayuscula.
    // NOTA: Usaremos un diccionario, que es como un tipo especial de 
    // array con asociaciones clave (key) y valor, entre claves del mismo tipo
    // y valores del mismo tipo.
    let diccionario = ["A": "4", 
        "B": "I3", 
        "C": "[", 
        "D": ")", 
        "E": "3", 
        "F": "|=", 
        "G": "&", 
        "H": "#", 
        "I": "1", 
        "J": ",_|", 
        "K": ">|", 
        "L": "1", 
        "M": "/\\/\\", 
        "N": "^/", 
        "O": "0", 
        "P": "|*", 
        "Q": "(_,)", 
        "R": "I2", 
        "S": "5", 
        "T": "7", 
        "U": "(_)", 
        "V": "\\/", 
        "W": "\\/\\/", 
        "X": "><", 
        "Y": "j", 
        "Z": "2", 
        "1": "L", 
        "2": "R", 
        "3": "E", 
        "4": "A", 
        "5": "S", 
        "6": "b", 
        "7": "T", 
        "8": "B", 
        "9": "g", 
        "0": "o"]

    var traduccion = ""

    // Recorremos cada letra (char) del texto que nos pasan como parametro,
    // la vamos traduciendo (buscandola en el diccionario)
    for letra in texto {
        // Buscamos la letra (en mayusculas) en el diccionario
        let valor = diccionario[String(letra).uppercased()]
        if valor != nil {
            traduccion = traduccion + valor!
        } else {
            // Como el resultado es un String, hay que hacer un cast
            traduccion = traduccion + String(letra)
        }
        //Se puede poner en una sola linea:
        // traduccion += diccionario[letra.description.uppercased()] ?? letra.description
    }

    return traduccion
}

let frase = "Hola mundo!"
let hacker = traductorLeet(texto: frase)
print("El resultado de traducir \(frase) es \(hacker)")
