//
//  error_en_campo_ui.swift
//  PruebasModelos2
//
//  Created by alumno on 3/4/26.
//

enum NivelesDeError{
    case gravitsimo
    case ehh_nomas_advierte
    case ninguno
}

struct ErrorUI{
    let campo: String
    let error: String
    let nivel_de_error: NivelesDeError
}
