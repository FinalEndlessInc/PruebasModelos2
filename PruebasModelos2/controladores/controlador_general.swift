//
//  controlador_general.swift
//  PruebasModelos2
//
//  Created by alumno on 3/2/26.
//
import SwiftUI

@Observable
class ControladorGeneral{
    public var mensajes: [Mensaje]
    public var usuarios: [Usuario]
    
    init() {
        mensajes = mensajes_falsos
        usuarios = usuarios_falsos
    }
    
    func agregar_mensajes(){
        mensajes += [Mensaje(texto: "mensaje de \(mensajes.count + 1)", id_usuario: nil)]
    }
    
    func agregar_usuario( _ usuario_nuevo: Usuario){
        usuarios.append(usuario_nuevo)
        
        print("La cantidad actual de usuarios es: \(usuarios.count)")
    }
}
