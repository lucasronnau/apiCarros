//
//  carrosTableViewController.swift
//  testeLiveTouch
//
//  Created by Lucas Ronnau on 10/12/19.
//  Copyright © 2019 Lucas Ronnau. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import GoogleSignIn

class carrosTableViewController: UITableViewController {
    
    let model = Model.instance
    @IBOutlet weak var lblNomePerfil: UILabel!
    @IBOutlet weak var imgPerfil: UIImageView!
    var carros : [Carros?]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblNomePerfil.text = model.perfil.fullName
        imgPerfil.image = model.perfil.foto
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        carros = Model.instance.carros
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return carros.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "id_cel_carros", for: indexPath) as! carrosCell
        if model.imgCarros.count == model.carros.count {
            celula.carroImagem.image = model.imgCarros[indexPath.row].image
        }else {
            URLSession.shared.dataTask(with: URL(string: carros[indexPath.row]!.foto)!) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }

                DispatchQueue.main.async {
                    celula.carroImagem.image = UIImage(data: data!)
                    self.model.imgCarros.append(fotoCarros(image: UIImage(data: data!)!))
                }
            }.resume()
        }
        
        celula.nomeCarro.text = carros[indexPath.row]?.nome
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "detalhesCarrosView") as? detalhesCarroViewController{
            
            vc.carroIndex = indexPath.row
            self.show(vc, sender: self)
        }
    }

    @IBAction func SignOut(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
    }
    
}
