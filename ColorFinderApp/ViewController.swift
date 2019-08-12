//
//  ViewController.swift
//  ColorFinderApp
//
//  Created by Richard on 2019/7/30.
//  Copyright © 2019 Richard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    var redValue = 255
    var greenValue = 255
    var blueValue = 255
    
    
    @IBOutlet var myBackgroundView: UIView!
    
    
    @IBOutlet weak var redNumber: UILabel!
    
    @IBOutlet weak var greenNumber: UILabel!
    
    
    @IBOutlet weak var blueNumber: UILabel!
    
    
    @IBAction func redSlider(_ sender: UISlider) {
    redValue = Int(sender.value)
    redNumber.text = "R:\(redValue)"
    changeBackgroundColor()
    }
    

    @IBAction func greenSlider(_ sender: UISlider) {
    greenValue = Int(sender.value)
    greenNumber.text = "G:\(greenValue)"
    changeBackgroundColor()
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
    blueValue = Int(sender.value)
    blueNumber.text = "B:\(blueValue)"
    changeBackgroundColor()
    }
    
    func changeBackgroundColor(){
        myBackgroundView.backgroundColor = UIColor(displayP3Red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

