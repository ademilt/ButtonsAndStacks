//
//  ViewController.swift
//  ButtonsAndStacks
//
//  Created by Annie DeMilt on 1/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorLabel: UILabel!
    
    var colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .systemIndigo, .systemPurple]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorButtonPressed(_ sender: UIButton) {
        print("You clicked tag #: \(sender.tag)")
        
        if sender.tag >= 0 && sender.tag <= 6{
            colorLabel.text = "You clicked \(sender.currentTitle!)"
            //not working for some reason
            colorLabel.textColor = colors[sender.tag]
        }else{
            colorLabel.text = ""
        }
        
        //        if sender.tag == 1000{
        //            colorLabel.text = ""
        //        }else{
        //            colorLabel.text = "You clicked \(sender.currentTitle!)"
        //            //not working for some reason
        //            colorLabel.textColor = colors[sender.tag]
        //    }
        
    }
}

