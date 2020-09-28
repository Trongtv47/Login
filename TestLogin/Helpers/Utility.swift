//
//  Utility.swift
//  TestLogin
//
//  Created by Trần Trọng on 9/28/20.
//  Copyright © 2020 Trần Trọng. All rights reserved.
//

import Foundation

class Utility {

    static var isLoggedIn = (getValueFromLocal(key: USER_DATA_KEY) != nil)
    
    // luu du lieu vao Local
    static func setValueToLocal(_ value: Any?, _ key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    // lay du lieu tu Local
    static func getValueFromLocal(key: String) -> Any? {
        return UserDefaults.standard.value(forKey: key)
    }
    
    static func getUserData() -> User? {
        let stringUserData = Utility.getValueFromLocal(key: USER_DATA_KEY) as? String
        let userData = stringUserData?.toDictionary()
        return User(dict: userData!)
    }
}
