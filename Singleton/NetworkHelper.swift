//
//  NetworkHelper.swift
//  Singleton
//
//  Created by C4Q on 12/13/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation


final class NetworkHelper {
    private var session: URLSession
    private init(sessionConfig: URLSessionConfiguration) {
        session = URLSession.init(configuration: sessionConfig)
    }
    static let ephemeralSession = NetworkHelper(sessionConfig: .ephemeral)
    
    
    func getSecureData(url:String, completionHandler: @escaping ((Data) -> Void)) {
        guard let myURL = URL.init(string: url) else {return}
        session.dataTask(with: myURL) { (data, response, error) in
            if let data = data {
                completionHandler(data)
            }
        }.resume()
    }

}




