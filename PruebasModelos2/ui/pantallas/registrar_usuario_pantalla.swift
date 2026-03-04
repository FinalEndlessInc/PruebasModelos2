//
//  registrar_usuario_pantalla.swift
//  PruebasModelos2
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

enum CamposRegistrarUsuario: String{
    case nombre = "nombre"
    case apodo = "apodo"
    case edad = "edad"
    case instagram = "instagram"
}

struct RegistrarUsuario: View {
    @Environment(ControladorGeneral.self) var controlador
    
    @State var nombre: String = ""
    @State var instagram: String = ""
    @State var edad: String = ""
    @State var apodo: String = ""
    
    @State var error: ErrorUI? = nil

    
    var body: some View {
        VStack{
            if(error != nil){
                Text("Hay un problema, por favor resuelve")
                
            }
            //TextField("Nombre: ", text: $nombre)
            CampoTexto(
                entrada: $nombre,
                placeholder: "Nombre",
                error: error,
                id: CamposRegistrarUsuario.nombre.rawValue
            )
            
            //TextField("Apodo: ", text: $apodo)
            CampoTexto(
                entrada: $apodo,
                placeholder: "Apodo",
                error: error,
                id: CamposRegistrarUsuario.apodo.rawValue
            )
            
            //TextField("Edad: ", text: $edad)
            CampoTexto(
                entrada: $edad,
                placeholder: "Edad",
                error: error,
                id: CamposRegistrarUsuario.edad.rawValue
            )
            
            //TextField("Instagram: ", text: $instragram)
            CampoTexto(
                entrada: $instagram,
                placeholder: "Instagram",
                error: error,
                id: CamposRegistrarUsuario.instagram.rawValue
            )
            
            Button(action: {
                validar_entradas()
            }){
                VStack{
                    Text("Agregar usuario")
                    Image(systemName: "person.fill.badge.plus")
                }
            }
        }
        .padding()
    
    }
    
    func validar_entradas(){
        if(nombre.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuario.nombre.rawValue,
                error: "NO Tienes nombre, no seas weon y ponte uno",
                nivel_de_error: .gravitsimo
            )
            return
        }
        
        if(apodo.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuario.apodo.rawValue,
                error: "Apodo no valido, porfa selecciona otro",
                nivel_de_error: .gravitsimo)
            return
        }
        
        if(edad.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuario.edad.rawValue,
                error: "Edad no valida, porfa selecciona otra",
                nivel_de_error: .gravitsimo)
            return
        }
        
        if(instagram.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuario.instagram.rawValue,
                error: "instagram no valido, porfa selecciona otro",
                nivel_de_error: .gravitsimo)
            return
        }
        
        controlador.agregar_usuario(crear_usuario())
        
        nombre = ""
        apodo = ""
        edad = ""
        instagram = ""
    }
       
    func  crear_usuario() -> Usuario{
        return Usuario(
            nombre: nombre,
            edad: Int(edad)!,
            apodo: apodo,
            instagram: instagram
        )
    }
}

#Preview {
    RegistrarUsuario()
        .environment(ControladorGeneral())
}
