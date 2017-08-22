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
    
    func decreaseTime() -> Void {
        intTime -= 1
        timeLabel.text = String(intTime)
    }
    
   
    @IBAction func pauseAction(_ sender: Any) {
       objTime.invalidate()
    }
    

    @IBAction func increaseButton(_ sender: Any) {
        objTime.invalidate()
        objTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTime), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func zeroButton(_ sender: Any) {
        intTime = 0
    }
    
    
    @IBAction func deceaseButton(_ sender: Any) {
        objTime.invalidate()
        objTime = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTime), userInfo: nil, repeats: true)
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

