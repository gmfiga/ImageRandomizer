//
//  ViewController.swift
//  ImageRandomizer
//
//  Created by Administrator on 6/19/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var btnNext: UIButton!
    var id:Int = 0
    var randomNum:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changePic(_ sender: Any) {
        while (randomNum == id) {
            randomNum = Int(arc4random_uniform(9))+1
        }
        
        id = randomNum
        let imageName = "logo\(randomNum).png"
        mainImage.image = UIImage(named: imageName)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
}


