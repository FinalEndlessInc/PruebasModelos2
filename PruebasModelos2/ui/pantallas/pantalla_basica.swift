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
        
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(usuarios_falsos){ usuario in
                    NavigationLink{
                        
                    }
                        label:{
                            EtiquetaUsuarioPerfil(usuario: usuario)
                        }
                }
            }
        }
        
        ScrollView(){
            LazyVStack{
                ForEach(controlador.mensajes){ mensaje in
                    NavigationLink{
                        Text("Mensaje: \(mensaje.texto)")
                    }
                        label:{
                            PrevistaMensaje(mensaje: mensaje)
                        }
                        .padding(10)
                }
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
