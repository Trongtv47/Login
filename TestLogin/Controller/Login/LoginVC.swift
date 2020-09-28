//
//  ViewController.swift
//  TestLogin
//
//  Created by Trần Trọng on 9/28/20.
//  Copyright © 2020 Trần Trọng. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if (Utility.getValueFromLocal(key: USER_DATA_KEY) != nil) {
            let main = UIStoryboard(name: "Main", bundle: nil)
            guard let vc = main.instantiateViewController(identifier: "MainTabBarController") as? MainTabBarController else { return }
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        guard let email = tfEmail.text else { return }
        guard let passWord = tfPassword.text else { return }
        
        
        APIConnect.instance.login(email: email, password: passWord) { (user, message) in
            
            if let user = user {
                currentUser = user
                Utility.getValueFromLocal(key: USER_DATA_KEY)
                
                let main = UIStoryboard(name: "Main", bundle: nil)
                guard let vc = main.instantiateViewController(identifier: "MainTabBarController") as? MainTabBarController else { return }
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                
              } else {
                  if let message = message {
                      print(message)
                      self.showAlert(title: "Error", message: message)
                  }
              }
          }

    }
    
}

