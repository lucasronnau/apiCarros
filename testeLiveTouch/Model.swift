//
//  Model.swift
//  OompaLoompa
//
//  Created by Pyettra Ferreira on 26/11/19.
//  Copyright © 2019 Pyettra Ferreira. All rights reserved.
//

import Foundation
import UIKit

class Model {
    
    static let instance = Model()
    var perfil: Perfil!
    var carros: [Carros] = []
    var imgCarros: [fotoCarros] = []
    
    private init(){}
    
}


