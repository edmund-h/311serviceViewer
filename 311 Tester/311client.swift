//
//  311client.swift
//  311 Tester
//
//  Created by Edmund Holderbaum on 3/25/17.
//  Copyright © 2017 Bozo Design Labs. All rights reserved.
//

import Foundation
import Alamofire

final class APIclient {
    
    static fileprivate let categoryAPI = "https://api.cityofnewyork.us/311/v1/services/"
    static fileprivate let dataAPI = "https://data.cityofnewyork.us/resource/fhrw-4uyv.json"
    class func getInfo (completion: @escaping (String)->()) {
        let requestURL = categoryAPI + "all.json?app_id=" + Secrets.appID.rawValue +
        "&app_key=" + Secrets.appKey.rawValue
        print(requestURL)
        Alamofire.request(requestURL).responseString(completionHandler: {
            response in
            if let dict = response.result.value { //as? [String: Any]{
                completion(dict)
            }else {NSLog("%@", "could not unwrap response ")}
        })
    }
}
