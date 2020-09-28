//
//  Extensions.swift
//  TestLogin
//
//  Created by Trần Trọng on 9/28/20.
//  Copyright © 2020 Trần Trọng. All rights reserved.
//

import UIKit

extension Dictionary {
    
    func toString() -> String? {
        let data = try! JSONSerialization.data(withJSONObject: self, options: [])
        return String(data: data, encoding: .utf8)
    }
}

extension String {
    
    func toDictionary() -> [String: Any]? {
        if let data = self.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
}


extension UIViewController {
    func showAlert(title:String, message: String, completeHandler: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Close", style: .cancel) { (result : UIAlertAction) -> Void in
            completeHandler?()
        }
        alertController.addAction(okAction)
        if let rootVC = UIApplication.shared.keyWindow?.rootViewController {
            rootVC.present(alertController, animated: true, completion: nil)
        }
    }
    
}
