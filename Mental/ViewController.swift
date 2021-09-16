//
//  ViewController.swift
//  Mental
//
//  Created by Amged on 9/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // this Function is created to Draw the logo border Radius, color, and width
    func logoDecoration() {
        self.logoImage.layer.cornerRadius = self.logoImage.frame.size.width / 2;
        self.logoImage.clipsToBounds = true;
        self.logoImage.layer.borderWidth = 3.0
        self.logoImage.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
   
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        logoDecoration()
//        put te icon on right of the text field
        passwordTextField.layer.cornerRadius = 2
        self.passwordTextField.clipsToBounds = true; // without allowing clipsToBound no effect will appear in the borders
    

       }
    
    
    
    @IBAction func changePasswordVisibility(_ sender: UIButton) {
        // change the secure textentery property
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
        
        if sender.currentImage == UIImage(systemName: "eye") {
            sender.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        }else{
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
        }
    }
    
    
//    facebook button
    
    @IBAction func facebookButton(_ sender: UIButton) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let searchVC = storyBoard.instantiateViewController(withIdentifier: "searchViewController") as! SearchViewController
        
        searchVC.querry = "New Swift 5 features"; //  the query to be sent to server
        self.present(searchVC, animated: true, completion: nil)
    }
    
    
}

