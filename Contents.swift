//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(VelocidadInicial: Velocidades) {
        self = VelocidadInicial
    }
}

class Auto {
    var velocidad:Velocidades
    
    init(){
        velocidad = Velocidades(VelocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        var cadena = ""
        switch velocidad {
        case  .Apagado:
            velocidad = .VelocidadBaja
            cadena = "VelocidadBaja"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            cadena = "VelocidadMedia"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            cadena = "VelocidadAlta"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            cadena = "VelocidadMedia"
        }
        return (velocidad.rawValue,cadena)
    }
}

var auto = Auto()
for i in 1...20 {
    print(auto.cambioDeVelocidad())
}