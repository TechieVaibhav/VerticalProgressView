//
//  VerticalProgressView.swift
//  VerticalProgressBar
//
//  Created by Mohit Shrama on 18/09/19.
//  Copyright © 2019 vaibhav sharma. All rights reserved.
//

import UIKit

class VerticalProgressView: UIView {
    
    private var progressView : UIProgressView  = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    var progress : Float{
        get {
            return progressView.progress
        }
        set{
            progressView.progress = newValue
        }
    }
   
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
     //Progress lies 0 -> 1
    func setProgress(progress: Float, animated: Bool) {
        progressView.setProgress(progress, animated: animated)
    }
    var progressTintColor : UIColor? {
        get{
            return progressView.progressTintColor
        } set{
            progressView.progressTintColor = newValue
        }
    }
    var progressImage : UIImage?{
        get{
            return progressView.progressImage
        }set{
            progressView.progressImage = newValue
        }
    }
    var trackImage : UIImage?{
        get{
            return progressView.trackImage
        }set{
            progressView.trackImage = newValue
        }
    }
    var trackColor : UIColor?{
        get{
            return progressView.trackTintColor
        }set{
            progressView.trackTintColor = newValue
        }
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.addSubview(progressView)
        progressView.applyDefaultContraints(top: 0, bottom: 0, leading: 0, trailing: 0,toParentView: self)
        progressView.progress = progress
        progressView.clipsToBounds = true
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        rotateView()
    }
    func rotateView() {
        self.transform = CGAffineTransform(rotationAngle: -(.pi * 0.5))
    }
    override var intrinsicContentSize: CGSize{
        get {
            return CGSize(width: progressView.frame.size.width, height: progressView.frame.size.height)
        }
    }
}

extension UIView {
    
    func applyDefaultContraints(top : CGFloat? = nil, bottom: CGFloat? = nil, leading : CGFloat? = nil ,trailing : CGFloat? = nil, height : CGFloat? = nil, width : CGFloat? = nil, centerX : CGFloat? = nil, centerY : CGFloat? = nil, toParentView: UIView)  {
        if let top = top {
            topAnchor.constraint(equalTo: toParentView.topAnchor, constant: top).isActive = true
        }
        if let bottomCont = bottom {
            bottomAnchor.constraint(equalTo: toParentView.bottomAnchor, constant: bottomCont).isActive = true
        }
        if let leadingConst = leading {
            leadingAnchor.constraint(equalTo: toParentView.leadingAnchor, constant: leadingConst).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: toParentView.trailingAnchor, constant: trailing).isActive = true
        }
        if let centerXCont = centerX {
            centerXAnchor.constraint(equalTo: toParentView.centerXAnchor, constant: centerXCont).isActive = true
        }
        if let widthCont = width {
            widthAnchor.constraint(equalToConstant: widthCont).isActive = true
        }
        if let centerYCont = centerY {
            centerYAnchor.constraint(equalTo: toParentView.centerYAnchor, constant: centerYCont).isActive = true
        }
        if let heightConst = height {
            heightAnchor.constraint(equalToConstant: heightConst).isActive = true
        }
    }
}
