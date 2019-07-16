//
//  PhotoDetailViewController.swift
//  ViewFinder
//
//  Created by Apple on 7/16/19.
//  Copyright © 2019 Lauren Hering. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let realPhoto = photo {
            title = realPhoto.caption
            
            if let cellPhotoImageData = realPhoto.imageData {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    detailImage.image = cellPhotoImage
                }
            }
            
        }
        
    }
    
    @IBOutlet weak var detailImage: UIImageView!
    
   var photo : Photos? = nil

}
