//
//  ViewController.swift
//  Singleton
//
//  Created by C4Q on 12/13/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catImageView: UIImageView!
    
    
    @IBOutlet weak var catActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catActivityIndicator.startAnimating()
        APIClient.getMeACat { (catPhoto) in
            DispatchQueue.main.async {
              self.catActivityIndicator.stopAnimating()
              self.catImageView.image = ImageClient.getMeAPicture(url: catPhoto.file)
            }
        }
    }


}

