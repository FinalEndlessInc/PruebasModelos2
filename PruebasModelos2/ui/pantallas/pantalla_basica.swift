//
//  pantalla_basica.swift
//  PruebasModelos2
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct PantallaBasica: View {
    @Environment(ControladorGeneral.self) var controlador
    var body: some View {
        Text("Esta pantalla me mueve a la siguiente opcion")
        
        Spacer()
        
        ForEach(controlador.mensajes){ mensaje in
            NavigationLink{
                Text("Esta es la pantalla del \(mensaje.texto)")
            }
                label:{
                    Text("Pushopicame para a ver tu mensaje: \(mensaje.texto)")
                }
                .onAppear{
                    print("Hola, soy la vista de \(mensaje)")
                }
        }
        
        Spacer()
        
        Text("Agregar un hola mundo")
            .onTapGesture {
                controlador.agregar_mensajes()
            }
        
        NavigationLink{
            RegistrarUsuario()
        }
        label: {
            // Como debe de verse bonito el boton
            Text("Agregar usuario")
        }
            
        Spacer()
        
    }
}

#Preview {
    NavigationStack{
        PantallaBasica()
    }
    .environment(ControladorGeneral())
}
