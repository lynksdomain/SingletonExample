//
//  SpaceViewController.swift
//  Singleton
//
//  Created by C4Q on 12/13/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class SpaceViewController: UIViewController {

    
    @IBOutlet weak var spaceImageView: UIImageView!
    
    @IBOutlet weak var spaceActivityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spaceActivityIndicator.startAnimating()
        APIClient.getMeASpacePicture { (spacePhoto) in
            spacePhoto.getImage(completionHandler: { (image) in
                DispatchQueue.main.async {
                    self.spaceActivityIndicator.stopAnimating()
                    self.spaceImageView.image = image
                }
            })
        }
    }
 

}
