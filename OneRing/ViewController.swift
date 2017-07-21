//
//  ViewController.swift
//  OneRing
//
//  Created by Apple Mac on 6/8/16.
//  Copyright © 2016 Carrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RingView: MKRingProgressView!
    
    
    @IBAction func Breathe(_ sender: AnyObject) {
        
        var x = 0.0
        repeat{
            delay(x){
                self.breathin()
            }
            x = x + 5
            delay(x){
                self.breathout()
            }
            x = x + 5
        }while (x<=20)
    }
    
     func breathin(){
        super.viewDidLoad()
        CATransaction.begin()
        CATransaction.setAnimationDuration(5)
        RingView.progress = 1
        CATransaction.commit()
    }
    func breathout(){
        super.viewDidLoad()
        CATransaction.begin()
        CATransaction.setAnimationDuration(5)
        RingView.progress = 0
        CATransaction.commit()
    }

    
    override func viewDidLoad() {

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

func delay(_ delay: Double, closure: @escaping ()->()) {
    DispatchQueue.main.asyncAfter(
        deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC),
        execute: closure
    )
}




func breatheloop(_ inhale: Double, firstPause: Double, exhale: Double, secondPause: Double){
    
    
}
