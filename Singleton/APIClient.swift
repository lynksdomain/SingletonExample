//
//  APIClient.swift
//  Singleton
//
//  Created by C4Q on 12/13/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import Foundation

final class APIClient {
    static func getMeACat(completionHandler: @escaping ((CatPhoto) -> Void)) {
        let myStringURL = "https://aws.random.cat/meow"
        NetworkHelper.ephemeralSession.getSecureData(url: myStringURL) { (data) in
            do {
                let catPhoto = try JSONDecoder().decode(CatPhoto.self, from: data)
                completionHandler(catPhoto)
            } catch {
                print(error)
            }
        }
    }
    
    static func getMeASpacePicture(completionHandler: @escaping ((SpacePhoto) -> Void)) {
        let myStringURl = "https://api.nasa.gov/planetary/apod?api_key=wOjXlWXgK2hvmENZKBR2TuSHIlDiDg5lYqB5SkEy"
        NetworkHelper.ephemeralSession.getSecureData(url: myStringURl) { (data) in
            do {
                let pictureOfTheDay = try JSONDecoder().decode(SpacePhoto.self, from: data)
                completionHandler(pictureOfTheDay)
            }catch {
                print(error)
            }
        }
    }
    
    
}
