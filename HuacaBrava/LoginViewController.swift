//
//  LoginViewController.swift
//  cibertec
//
//  Created by DAMII on 17/09/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var correoTexField: UITextField!
    
    @IBOutlet weak var claveTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        let email = correoTexField.text
        let pass = claveTextField.text
        
        if let emailAlt = email, let passAlt = pass {
            if emailAlt.isEmpty {
                showAlert(mensaje: "Verifique Correo")
            } else if passAlt.isEmpty{
                showAlert(mensaje: "verifique Clave")
            } else {
                goToMain()
            }
            
        } else {
            //Error
        }
    }
    
    
    func goToMain() {
        let storyboar : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let loginScreen = storyboar.instantiateViewController(withIdentifier: "menuViewController") as! MenuViewController
        
        loginScreen.modalPresentationStyle = .fullScreen
        
        
        self.present(loginScreen, animated: true, completion: nil)
    }
    
    func showAlert(mensaje : String) {
        let alert = UIAlertController(title: "Error", message: mensaje , preferredStyle: .alert)
        
  
        let button = UIAlertAction(title: "Entendido", style: .default)
        let button2 = UIAlertAction(title: "Cancelar", style: .cancel)
        
        alert.addAction(button)
        alert.addAction(button2)
        
        
        self.present(alert, animated: true)
    }
    

}
