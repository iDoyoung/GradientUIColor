//
//  UIColor+Extension.swift
//  GradientColor
//
//  Created by Doyoung on 2022/01/16.
//

import UIKit

extension UIColor {
    
    static func gradientColor(bounds: CGRect, gradientLayer :CAGradientLayer) -> UIColor? {
        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        guard let context = UIGraphicsGetCurrentContext() else {
            return .systemBackground
        }
        gradientLayer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return UIColor(patternImage: image!)
    }
    
}
