//
//  loginViewController.swift
//  testeLiveTouch
//
//  Created by Lucas Ronnau on 09/12/19.
//  Copyright © 2019 Lucas Ronnau. All rights reserved.
//

import UIKit
import GoogleSignIn
import Alamofire
import SwiftyJSON

class loginViewController: UIViewController {
    
    let model = Model.instance
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        AF.request("https://carros-springboot.herokuapp.com/api/v1/carros").response { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                for item in json {
                    
                    

                    let carros = Carros(id: Int("\(item.1["id"])")!, nome: "\(item.1["nome"])", tipo: "\(item.1["tipo"])", descricao: "\(item.1["descricao"])", foto: "\(item.1["urlFoto"])", latitude: "\(item.1["latitude"])", longitude: "\(item.1["longitude"])")
                    self.model.carros.append(carros)
                }
            case .failure(let error):
                print(error)
            }
        }

        GIDSignIn.sharedInstance()?.presentingViewController = self

        // Automatically sign in the user.
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        
        // Do any additional setup after loading the view.
    }
    
    func verificaLogado() {
        if model.perfil != nil{
            if model.perfil.logado {
                if let vc = storyboard?.instantiateViewController(withIdentifier: "carrosTableView") as? carrosTableViewController{
                    
                    self.show(vc, sender: self)
                }
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        verificaLogado()
    }
    
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    
    @IBAction func signIn(_ sender: Any) {
        
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
extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
