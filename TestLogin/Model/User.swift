//
//  User.swift
//  TestLogin
//
//  Created by Trần Trọng on 9/28/20.
//  Copyright © 2020 Trần Trọng. All rights reserved.
//

import Foundation


struct User {
    var id: Int! = 0
    var email: String! = ""
    var name: String! = ""
    var phone: String! = ""
    var address: String! = ""
    var latitude: String! = ""
    var longitude: String! = ""
    var birthday: String! = ""
    var gender: Int! = 0
    var facebookID: String! = ""
    var googleID: String! = ""
    var deviceToken: String! = ""
    var cover: String! = ""
    var type: Int! = 0
    var receiveNotification: Bool! = false
    var accessToken: String! = ""
    var avatarURL: String! = ""
    var coverURL: String! = ""
    var friendCount: Int! = 0
    var followerCount: Int! = 0
    var reviewCount: Int! = 0
    var checkInCount: Int! = 0
    var mediaCount: Int! = 0
    var friendStatus: String! = ""
    var followStatus: Int! = 0
    var isInfluence: Bool! = false

    init(dict: [String:Any]) {
        if let id = dict["id"] as? Int {
            self.id = id
        }

        if let email = dict["email"] as? String {
            self.email = email
        }

        if let name = dict["name"] as? String {
            self.name = name
        }

        if let phone = dict["phone"] as? String {
            self.phone = phone
        }

        if let address = dict["address"] as? String {
            self.address = address
        }

        if let latitude = dict["latitude"] as? String {
            self.latitude = latitude
        }

        if let longitude = dict["longitude"] as? String {
            self.longitude = longitude
        }

        if let birthday = dict["birthday"] as? String {
            self.birthday = birthday
        }

        if let gender = dict["gender"] as? Int {
            self.gender = gender
        }

        if let facebookID = dict["facebook_id"] as? String {
            self.facebookID = facebookID
        }

        if let googleID = dict["google_id"] as? String {
            self.googleID = googleID
        }

        if let deviceToken = dict["device_token"] as? String {
            self.deviceToken = deviceToken
        }


        if let cover = dict["cover"] as? String {
            self.cover = cover
        }

        if let type = dict["type"] as? Int {
            self.type = type
        }

        if let receiveNotification = dict["receive_notification"] as? Bool {
            self.receiveNotification = receiveNotification
        }

        if let accessToken = dict["access_token"] as? String {
            self.accessToken = accessToken
        }

        if let avatarURL = dict["avatar_url"] as? String {
            self.avatarURL = avatarURL
        }

        if let coverURL = dict["cover_url"] as? String {
            self.coverURL = coverURL
        }

        if let friendCount = dict["friend_count"] as? Int {
            self.friendCount = friendCount
        }

        if let followerCount = dict["follower_count"] as? Int {
            self.followerCount = followerCount
        }

        if let reviewCount = dict["review_count"] as? Int {
            self.reviewCount = reviewCount
        }

        if let checkInCount = dict["check_in_count"] as? Int {
            self.checkInCount = checkInCount
        }

        if let mediaCount = dict["media_count"] as? Int {
            self.mediaCount = mediaCount
        }

        if let friendStatus = dict["friend_status"] as? String {
            self.friendStatus = friendStatus
        }

        if let followStatus = dict["follow_status"] as? Int {
            self.followStatus = followStatus
        }

        if let isInfluence = dict["is_influence"] as? Bool {
            self.isInfluence = isInfluence
        }
    }
}
