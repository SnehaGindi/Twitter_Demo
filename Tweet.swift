//
//  Tweet.swift
//  Twitter: 01
//
//  Created by Sneha gindi on 16/03/17.
//  Copyright © 2017 Sneha Gindi. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Tweet {
    let user: User
    let message: String
    
    init(json: JSON) {
        let userJson = json["user"]
        self.user = User(json: userJson)
        
        self.message = json["message"].stringValue
    }
    
}
