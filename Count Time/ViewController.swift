//
//  ViewController.swift
//  Count Time
//
//  Created by MasterUNG on 8/22/2560 BE.
//  Copyright © 2560 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Explicit
    var objTime = Timer()
    var intTime: Int = 0
    
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBAction func playAction(_ sender: Any) {
        objTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTime), userInfo: nil, repeats: true)
    }
    
    func processTime() -> Void {
        intTime += 1
        timeLabel.text = String(intTime)
    }
       
   
    @IBAction func pauseAction(_ sender: Any) {
        objTime.invalidate()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

