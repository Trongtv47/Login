//
//  HomeVC.swift
//  TestLogin
//
//  Created by Trần Trọng on 9/28/20.
//  Copyright © 2020 Trần Trọng. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
        let user = Utility.getUserData()
        print(user?.accessToken)
    }
    
    @IBAction func btnLogOut(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: USER_DATA_KEY)
        self.dismiss(animated: true, completion: nil)
        
    }
   

}
