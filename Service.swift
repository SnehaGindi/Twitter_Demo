//
//  Service.swift
//  Twitter: 01
//
//  Created by Sneha gindi on 17/03/17.
//  Copyright © 2017 Sneha Gindi. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {

    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    
    static let sharedInstance = Service()
    
    func fetchHomeFeed(completion: @escaping (HomeDatasource?, Error?) -> ()){
 
        let request: APIRequest<HomeDatasource, JSONError> = tron.request("/twitter/home")
        
        request.perform(withSuccess: { (homeDatasource) in
            print("Successfully fetched JSON objects")
            print(homeDatasource.users.count)
            
            completion(homeDatasource, nil)
//            self.datasource = homeDatasource
            
        }) { (err) in
            
            completion(nil, err)
            print("Failed to fetch JSON", err)
            
        }

    }
    class JSONError: JSONDecodable {
        required init(json: JSON) throws {
            print("JSON parse Error")
        }
    }
    
}
