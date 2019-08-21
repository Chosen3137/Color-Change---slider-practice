//
//  ViewController.swift
//  colorChange
//
//  Created by 邱士宸 on 2019/8/21.
//  Copyright © 2019 Shih Chen Chiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageMickey: UIImageView!
    @IBOutlet weak var redColor: UISlider!
    @IBOutlet weak var greenColor: UISlider!
    @IBOutlet weak var blueColor: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var opacityLabel: UILabel!
    
    @IBOutlet weak var roundCorner: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SliderColorChange(_ sender: Any) {
        imageMickey.backgroundColor = UIColor(red: CGFloat(redColor.value/255), green: CGFloat(greenColor.value/255), blue: CGFloat(blueColor.value/255), alpha: CGFloat(opacitySlider.value))
        redLabel.text = String(format: "%.1f" , redColor.value)
        greenLabel.text = String(format: "%.1f" , greenColor.value)
        blueLabel.text = String(format: "%.1f" , blueColor.value)
        opacityLabel.text = String(format: "%.1f" , opacitySlider.value)
        
    }
    
    @IBAction func randomColor(_ sender: UIButton) {
        let red = Double.random(in: 0...255)
        let green = Double.random(in: 0...255)
        let blue = Double.random(in: 0...255)
        let alpha = Double.random(in: 0.1...1)
        imageMickey.backgroundColor=UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: CGFloat(alpha))
        opacitySlider.value = Float(alpha)
        redColor.value = Float(red)
        greenColor.value = Float(green)
        blueColor.value = Float(blue)
        redLabel.text=String(format: "%.1f",red)
        greenLabel.text=String(format: "%.1f",green)
        blueLabel.text=String(format: "%.1f",blue)
        opacityLabel.text=String(format: "%.1f" , alpha)
       
    }
    
}

