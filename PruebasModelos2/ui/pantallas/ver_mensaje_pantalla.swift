//
//  ver_mensaje_pantalla.swift
//  PruebasModelos2
//
//  Created by alumno on 3/11/26.
//

import SwiftUI

struct VerMensajePantalla: View {
    @State private var respuesta_mensaje: String = ""
    var detallesMensaje: Mensaje
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                HStack{
                    Image("amogus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                        .clipShape(Circle())
                    Text( detallesMensaje.id_usuario ?? "Anonimo")
                        .foregroundStyle(Color.white)
                    Spacer()
                }.padding()
                
                ScrollView(){
                    LazyVStack{
                        HStack{
                            BurbujaMensaje(mensaje: detallesMensaje)
                            Spacer()
                        }.padding()
                        
                    }
                }
                .frame(height:500)
                .background(Color("fondo_elementos"))
                
                TextField("Responder...", text: $respuesta_mensaje){
                    
                }.frame(height: 20)
                    .padding(10)
                    .overlay{
                        RoundedRectangle(cornerRadius: 5, style: .circular)
                            .stroke(.white, lineWidth: 2)
                    }
                    .background(Color("fondo_mensajes"))
                    .foregroundStyle(Color.white)
                
                Spacer()
            }
        }
        .background(Color("fondo"))
    }
}

#Preview {
    VerMensajePantalla(detallesMensaje: mensajes_falsos[0])
}
