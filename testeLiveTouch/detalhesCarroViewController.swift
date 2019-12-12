//
//  detalhesCarroViewController.swift
//  testeLiveTouch
//
//  Created by Lucas Ronnau on 11/12/19.
//  Copyright © 2019 Lucas Ronnau. All rights reserved.
//

import UIKit

class detalhesCarroViewController: UIViewController {

    
    @IBOutlet weak var lblDescricaoCaroo: UILabel!
    @IBOutlet weak var lblTipoCarro: UILabel!
    @IBOutlet weak var lblNomeCarro: UILabel!
    @IBOutlet weak var imgCarro: UIImageView!
    var carroIndex = -1
    let carros = Model.instance.carros
    let imgCarros = Model.instance.imgCarros
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblNomeCarro.text = carros[carroIndex].nome
        lblTipoCarro.text = carros[carroIndex].tipo
        lblDescricaoCaroo.text = carros[carroIndex].descricao
        imgCarro.image = imgCarros[carroIndex].image
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
