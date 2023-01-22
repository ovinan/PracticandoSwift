import Foundation

/*
 * Reto #14
 * ¿ES UN NÚMERO DE ARMSTRONG?
 * Fecha publicación enunciado: 04/04/22
 * Fecha publicación resolución: 11/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Escribe una función que calcule si un número dado es un número de Armstrong (o también llamado narcisista).
 * Un número de n dígitos es un número de Armstrong si es igual a la suma de las n-ésimas potencias de sus dígitos. 
 * Por ejemplo, 371, 8208 y 4210818 son números de Armstrong ya que
 *      371 = 3^3 + 7 + 1³ y  
 *     8208 = 8^4 + 2^4 + 0^4 + 8^4 
 *  4210818 = 4^7 + 2^7 + 1^7 + 0^7 + 8^7 + 1^7 + 8^7
 */

func esNumArmstrong(numero: Int) -> Bool {
    // Un numero negativo no puede ser numero de Armstrong
    if numero < 0 {
        return false
    }
    
    var suma = 0
    // Una forma sencilla de obtener el numero de digitos de un numero
    // es pasarlo a string y contar su longitud.
    // Ademas en este caso tenemos que aplicar un cast a Double para poder
    // usar despues la funcion POW.
    let valorPotencia = Double(String(numero).count)
    
    // Tomamos cada uno de los digitos, y lo elevamos a la potencia
    for letra in String(numero) {
        let digito = Double(String(letra))
        suma = suma + Int(pow(digito!, valorPotencia))
    }
    return numero == suma
}

print(esNumArmstrong(numero: 371))
print(esNumArmstrong(numero: -371))
print(esNumArmstrong(numero: 8209))
print(esNumArmstrong(numero: 0))
