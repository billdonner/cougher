//
//  ViewController.swift
//  cougher
//
//  Created by bill donner on 7/31/17.
//  Copyright © 2017 billdonner. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    @IBOutlet weak var lockswitch: UISwitch!
    
    @IBAction func lockChanged(_ sender: Any) {
        slider.isEnabled =
        !lockswitch.isOn
    }
    @IBOutlet weak var slider: UISlider!
    @IBAction func sliderAction(_ sender: Any) {
        
        print("Slider value changed to \(slider.value)")
        
    }
            
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.lockswitch.setOn(true,animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lockswitch.isOn = true
        slider.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib. 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

