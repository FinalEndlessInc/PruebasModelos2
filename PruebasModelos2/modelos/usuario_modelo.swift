//
//  usuario.swift
//  PruebasModelos2
//
//  Created by alumno on 3/2/26.
//

import Foundation

struct Usuario: Identifiable{
    let id = UUID()
    
    let nombre: String
    let edad: Int
    let apodo: String
    let instagram: String
    var conectado: Bool = false
    let foto_de_perfil: String = "person.fill"
}
