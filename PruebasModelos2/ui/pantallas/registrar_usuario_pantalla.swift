//
//  registrar_usuario_pantalla.swift
//  PruebasModelos2
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct RegistrarUsuario: View {
    @State var nombre: String
    @State var instragram: String
    @State var edad: Int
    @State var apodo: String
    
    var body: some View {
        TextField("Nombre: ", text: $nombre)
    
    }
}
