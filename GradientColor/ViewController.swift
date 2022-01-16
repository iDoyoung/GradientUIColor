//
//  ViewController.swift
//  GradientColor
//
//  Created by Doyoung on 2022/01/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let gradientLayer = CAGradientLayer()
        gradientLayer.getGradientLayer(
            colors: [.systemRed, .systemBlue, .systemMint, .systemGreen, .systemCyan],
            alpha: 1,
            frame: self.view.bounds,
            startPoint: CGPoint(x: 0.0, y: 0.5),
            endPoint: CGPoint(x: 1.0, y: 0.5)
        )
        let color = UIColor.gradientColor(bounds: self.view.bounds, gradientLayer: gradientLayer)
        self.view.backgroundColor = color
        
    }

}

