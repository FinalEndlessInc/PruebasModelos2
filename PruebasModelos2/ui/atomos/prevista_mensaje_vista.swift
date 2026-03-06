//
//  prevista_mensaje_vista.swift
//  PruebasModelos2
//
//  Created by alumno on 3/6/26.
//

import SwiftUI

struct PrevistaMensaje: View {
    var mensaje: Mensaje
    
    var body: some View {
        HStack{
            Image(systemName: "message")
                .resizable()
                .scaledToFit()
                .frame(width:50)
            
            VStack(alignment: .leading){
                HStack{
                    Text("\(mensaje.id_usuario ?? "Anonimo")")
                    Spacer()
                }
                Text("\(mensaje.texto)")
            }
            Spacer()
        }
        .padding()
        .frame(height: 75)
        .overlay{
            RoundedRectangle(cornerRadius: 25, style: .circular)
                .stroke(.black, lineWidth: 2)
        }
    }
        
}

#Preview {
    PrevistaMensaje(mensaje: mensajes_falsos[0])
}
