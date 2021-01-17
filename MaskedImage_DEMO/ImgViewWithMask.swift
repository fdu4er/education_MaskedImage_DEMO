//
//  ImgViewWithMask.swift
//  MaskedImage_DEMO
//
//  Created by Nik on 1/17/21.
//

import UIKit
@IBDesignable
class ImgViewWithMask: UIImageView {
    let maskImageView = UIImageView()
    
    @IBInspectable
    var maskImage: UIImage?{
        didSet{
            maskImageView.image = maskImage
            maskImageView.frame = bounds
            mask = maskImageView
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        maskImageView.image = maskImage
        maskImageView.frame = bounds
        mask = maskImageView
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
