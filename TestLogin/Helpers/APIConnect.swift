//
//  APIConnect.swift
//  TestLogin
//
//  Created by Trần Trọng on 9/28/20.
//  Copyright © 2020 Trần Trọng. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class APIConnect: NSObject {
    static let instance = APIConnect()
    var sessionManager: SessionManager!
    
    override init() {
        let config = URLSessionConfiguration.default
        sessionManager = Alamofire.SessionManager(configuration: config)
    }
    
    //    MARK: Login
    
    func login(email: String, password: String, completion: @escaping(_ user: User?, _ message: String?) -> Void) {
        
        let url = apiURL + loginURL
        let params: [String: Any] = ["email": email, "password": password]
        
        sessionManager.request(url, method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            
            if let json = response.result.value as? [String: Any] {
                if let result = json["result"] as? Bool, result {
                    if let userData = json["data"] as? [String: Any] {
                        let stringData = userData.toString()
                        Utility.setValueToLocal(stringData, USER_DATA_KEY)
                        completion(User(dict: userData), nil)
                    }
                } else {
                    completion(nil, json["message"] as? String)
                }
            } else {
                completion(nil, "Co loi xay ra, vui long thu lai")
            }
        }
    }
}
