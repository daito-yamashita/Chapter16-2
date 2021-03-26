//
//  ViewController.swift
//  Chapter16-2
//
//  Created by daito yamashita on 2021/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tombo: UIImageView!
    
    var lastRotation: CGFloat = 0.0
    
    @IBAction func rotateTombo(_ sender: UIRotationGestureRecognizer) {
        switch sender.state {
        case .began:
            sender.rotation = lastRotation
        case .changed:
            tombo.transform = CGAffineTransform(rotationAngle: sender.rotation)
        case .ended:
            lastRotation = sender.rotation
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

