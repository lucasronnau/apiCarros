//
//  testeFotoViewController.swift
//  testeLiveTouch
//
//  Created by Lucas Ronnau on 09/12/19.
//  Copyright © 2019 Lucas Ronnau. All rights reserved.
//

import UIKit

class testeFotoViewController: UIViewController {
    let model = Model.instance
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = model.perfil.foto
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
