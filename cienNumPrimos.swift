/*
 * ¿ES UN NÚMERO PRIMO?
 * Fecha publicación enunciado: 17/01/22
 * Fecha publicación resolución: 24/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 *
 */

import Foundation

func esPrimo(numero: Int) -> Bool {
    
    if numero < 2 {
        return false
    }
    // Un numero es primo si NO es divisible por los anteriores a el
    // (es decir, si el resto de dividir es siempre distinto de cero)
    for contador in 2 ..< numero {
        if numero % contador == 0 {
            return false
        }
    }
    
    return true
}

for contador in 1...100{
    if esPrimo(numero: contador) {
        print(contador)
    }
}
