//
//  burbuja_mensaje.swift
//  PruebasModelos2
//
//  Created by alumno on 3/11/26.
//

import SwiftUI

struct BurbujaMensaje : View {
    var mensaje: Mensaje
    var body: some View {
        ZStack{
            Text(mensaje.texto)
                .font(.system(size: 20, weight: .medium, design: .rounded))
                .foregroundStyle(Color.white)
        }
        .padding(30)
        .background(Color("fondo_mensajes"))
        .cornerRadius(25)
        .overlay{
            RoundedRectangle(cornerRadius: 25, style: .circular)
                .stroke(.white, lineWidth: 2)
        }
    }
}

#Preview {
    BurbujaMensaje(mensaje: mensajes_falsos[0])
}
