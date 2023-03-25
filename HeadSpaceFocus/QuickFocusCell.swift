//
//  QuickFocusCell.swift
//  HeadSpaceFocus
//
//  Created by WonDongHyun on 2023/03/21.
//

import UIKit

class QuickFocusCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptLabel: UILabel!
    
    
    
    func configure (_ quickFocus : QuickFocus ) {
        
        imageView.image = UIImage(named: quickFocus.imageName)
        titleLabel.text = quickFocus.title
        descriptLabel.text = quickFocus.description
        
    }
    
    
}
