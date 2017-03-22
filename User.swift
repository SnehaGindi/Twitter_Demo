//
//  User.swift
//  Twitter: 01
//
//  Created by Sneha gindi on 13/03/17.
//  Copyright © 2017 Sneha Gindi. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

struct User {
    let name: String
    let username: String
    let bioText: String
    let profileImageUrl: String
    
    init(json: JSON){
        self.name = json["name"].stringValue
        self.username = json["username"].stringValue
        self.bioText = json["bio"].stringValue
        self.profileImageUrl = json["profileImageUrl"].stringValue
    }
    
}
