//
//  CollectionViewCell.swift
//  RenterApp
//
//  Created by intelmac on 16/01/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewOfCell: UIView!
    @IBOutlet weak var imageCorner: UIImageView!
    @IBOutlet weak var smImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.cornerRadius(viewOfCell: viewOfCell)
        self.cornerRadius2(imageCorner: imageCorner)
        
        self.smImage.layer.cornerRadius = self.smImage.frame.width/5.5
        self.smImage.clipsToBounds = true
    }

    func cornerRadius(viewOfCell: UIView)   {
        self.viewOfCell.layer.cornerRadius = self.viewOfCell.frame.width/20.5
        self.viewOfCell.clipsToBounds = true
    }
    func cornerRadius2(imageCorner: UIImageView)   {
        self.imageCorner.layer.cornerRadius = self.imageCorner.frame.width/10.5
        self.imageCorner.clipsToBounds = true
    }
    
}

