//
//  perfil_usuario_chiquito.swift
//  PruebasModelos2
//
//  Created by alumno on 3/6/26.
//

import SwiftUI

struct EtiquetaUsuarioPerfil: View {
    var usuario: Usuario
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .frame(width: 140, height: 140)
                    .foregroundStyle(Color.mint)
                    .opacity(0.0)
                VStack{
                    Image("amogus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .clipShape(Circle())
                    HStack{
                        Text("\(usuario.apodo)")
                            .foregroundStyle(Color.white)
                        Circle()
                            .frame(width: 15)
                            .foregroundStyle(usuario.conectado ? Color.green: Color.red)
                    }
                }
            }
        }
    }
}

#Preview {
    EtiquetaUsuarioPerfil(usuario: usuarios_falsos[0])
}
