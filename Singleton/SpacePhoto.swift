//
//  SpacePhoto.swift
//  Singleton
//
//  Created by C4Q on 12/19/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit


struct SpacePhoto: Codable {
    var date: String
    var hdurl: String
    func getImage(completionHandler: @escaping ((UIImage) -> Void)){
        NetworkHelper.ephemeralSession.getSecureData(url: self.hdurl) { (data) in
            if let image = UIImage.init(data: data) {
                completionHandler(image)
            }
        }
    }
}
