//
//  campo.swift
//  PruebasModelos2
//
//  Created by alumno on 3/4/26.
//

import SwiftUI

struct CampoTexto: View {
    @Binding var entrada: String
    var placeholder: String
    
    var error: ErrorUI?
    var id: String
    
    var body: some View {
        TextField(placeholder, text: $entrada)
        
        if(error?.campo == id){
            switch error!.nivel_de_error {
            case .gravitsimo:
                Text(error!.error)
                    .foregroundStyle(Color.red)
            case .ehh_nomas_advierte:
                Text(error!.error)
                    .foregroundStyle(Color.yellow)
            case .ninguno:
                
            }
            
            
        }
    }
}
