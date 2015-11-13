//
//  ViewController.swift
//  MaskImage
//
//  Created by FrankLiu on 15/11/12.
//  Copyright © 2015年 刘大帅. All rights reserved.
//
//  https://github.com/yafoolaw
//  http://www.jianshu.com/users/09e77d340dcf/latest_articles
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        let imageView: UIImageView = UIImageView(image: UIImage(named: "background"))
        imageView.frame = CGRect(x: 0, y: 0, width: imageView.bounds.width/3, height: imageView.bounds.height/3)
        imageView.center = view.center
        
        view.addSubview(imageView)
        
        let maskImage: UIImage = UIImage(named: "mask")!
        
        /*
        *  resizableImageWithCapInsets(capInsets: UIEdgeInsets, resizingMode: UIImageResizingMode) -> UIImage 和
        *   resizableImageWithCapInsets(capInsets: UIEdgeInsets) -> UIImage 功能是一样的,
        *  都是指定inset内的图片内容进行缩放,inset范围的内容不变.
        *  只不过前者指定了缩放模式,其中UIImageResizingModeTile 是平铺,UIImageResizingModeStretch 是拉伸
        */
        maskImage.resizableImageWithCapInsets(UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12), resizingMode: .Stretch)
        
        let maskImageView: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        maskImageView.image = maskImage
        
        view.addSubview(maskImageView)
        
        imageView.maskView = maskImageView
        
        UIView.animateWithDuration(3, delay: 0, options: .CurveEaseIn, animations: { () -> Void in
            
            maskImageView.frame = imageView.bounds
            
            }) { (Bool) -> Void in
                
        }
        
    }

}

