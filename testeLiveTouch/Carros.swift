//
//  Carros.swift
//  testeLiveTouch
//
//  Created by Lucas Ronnau on 10/12/19.
//  Copyright © 2019 Lucas Ronnau. All rights reserved.
//

import Foundation
import UIKit

class Carros {
    var id: Int
    var nome: String
    var tipo: String
    var descricao: String
    var foto: String
    var latitude: String
    var longitude: String
    
    init(id: Int, nome: String, tipo: String, descricao: String, foto: String, latitude: String, longitude: String) {
        self.id = id
        self.nome = nome
        self.descricao = descricao
        self.foto = foto
        self.latitude = latitude
        self.longitude = longitude
        self .tipo = tipo
    }
}
