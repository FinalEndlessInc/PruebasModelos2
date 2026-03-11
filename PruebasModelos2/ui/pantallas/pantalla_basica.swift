//
//  pantalla_basica.swift
//  PruebasModelos2
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct PantallaBasica: View {
    @Environment(ControladorGeneral.self) var controlador
    @State var gente_conectada: Int = 0
    
    var body: some View {
        ZStack{
            
            VStack{
                Spacer()
                HStack{
                    Text("Conectados: \(gente_conectada)")
                        .foregroundStyle(Color.white)
                    Spacer()
                }.padding(10)
                ScrollView(.horizontal){
                    LazyHStack{
                        ForEach(controlador.usuarios){ usuario in
                            NavigationLink{
                                
                            }
                                label:{
                                    EtiquetaUsuarioPerfil(usuario: usuario)
                                }
                                .onAppear{
                                    if(usuario.conectado){
                                        gente_conectada += 1
                                    }
                                }
                        }
                    }
                }.frame(height: 180)
                
                HStack{
                    Text("Bandeja de mensajes:")
                        .foregroundStyle(Color.white)
                        .bold()
                    Spacer()
                }.padding(10)
                
                
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
                .frame(height:400)
                .background(Color("fondo_elementos"))
                
                
                Spacer()
                
                //Text("Agregar un hola mundo")
                  //  .onTapGesture {
                    //    controlador.agregar_mensajes()
               //     }
                
                NavigationLink{
                    RegistrarUsuario()
                    
                }
                label: {
                    // Como debe de verse bonito el boton
                    Text("Agregar contacto")
                }
                .onAppear(){
                    gente_conectada = 0
                }
                    
                Spacer()
            }
        }.background(Color("fondo"))
    }
}

#Preview {
    NavigationStack{
        PantallaBasica()
    }
    .environment(ControladorGeneral())
}
