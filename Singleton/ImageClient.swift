//
//  ImageClient.swift
//  Singleton
//
//  Created by C4Q on 12/13/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit


class ImageClient {
    static func getMeAPicture (url: String) -> UIImage? {
        guard let myURL = URL.init(string: url) else {return nil}
        do {
            let data = try Data.init(contentsOf: myURL)
            guard let image = UIImage.init(data: data) else { return nil }
            return image
        } catch {
            print(error)
            return nil
        }
    }
}
