//
//  PhotoCell.swift
//  L08_sandbox1
//
//  Created by Thomas Vandegriff on 2/13/19.
//  Copyright © 2019 Make School. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        updateCell(with: nil)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        updateCell(with: nil)
    }
    
    func updateCell(with image: UIImage?) {
        if let imageToDisplay = image {
            activityIndicator.stopAnimating()
            photoImageView.image = imageToDisplay
        } else {
            activityIndicator.startAnimating()
            photoImageView.image = nil
        }
    }
}
