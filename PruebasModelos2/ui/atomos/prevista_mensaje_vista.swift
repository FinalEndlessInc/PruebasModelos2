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
        ZStack{
            Rectangle()
                .frame(height: 75)
                .cornerRadius(25)
                .foregroundStyle(Color("fondo_mensajes"))
            
            HStack{
                Image("amogus")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    HStack{
                        Text("\(mensaje.id_usuario ?? "Anonimo")")
                            .bold()
                        Spacer()
                    }
                    Text("\(mensaje.texto)")
                }
                Spacer()
            }
            .padding()
            .frame(height: 75)
            .foregroundStyle(Color.white)
            .overlay{
                RoundedRectangle(cornerRadius: 25, style: .circular)
                    .stroke(.white, lineWidth: 2)
            }
        }
        
    }
        
}

#Preview {
    PrevistaMensaje(mensaje: mensajes_falsos[0])
}
