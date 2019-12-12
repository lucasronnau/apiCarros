//
//  fotoPerfil.swift
//  testeLiveTouch
//
//  Created by Lucas Ronnau on 09/12/19.
//  Copyright © 2019 Lucas Ronnau. All rights reserved.
//

import Foundation
import UIKit

class Perfil {
    var nome: String
    var foto: UIImage
    var fullName: String
    var logado: Bool = false
    
    init(nome: String, foto: UIImage, fullName: String, logado: Bool) {
        self.nome = nome
        self.foto = foto
        self.fullName = fullName
        self.logado = logado
    }
}
