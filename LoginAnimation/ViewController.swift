//
//  ViewController.swift
//  LoginAnimation
//
//  Created by Mitesh on 25/01/17.
//  Copyright © 2017 Mitesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var door: UIImageView!
    @IBOutlet weak var animate: UIButton!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var person: UIImageView!
    var k:Int = 0
    var z:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animateDoor(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            switch(self.k){
                case 0:
                self.door.center.x += (self.yellow.bounds.width)/4
                self.person.center.x += (self.yellow.bounds.width)/4
                self.k = 1
                
                case 1:
                    self.door.center.x += (self.yellow.bounds.width)/4
                    self.person.center.x += ((self.yellow.bounds.width)/4 + self.person.bounds.width/20)
                    self.k = 2
                case 2:
                    self.door.center.x -= (self.yellow.bounds.width)/2
                    self.person.center.x += (self.yellow.bounds.width)/4
                    self.k = 0
                case 3:
                    self.door.center.x -= (self.yellow.bounds.width)/4
                    self.k = 0
                default:
                print("Hello")
                
            }
        })
    }

    @IBAction func animateDoorMore(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            if self.z == 0{
                self.door.center.x += (self.yellow.bounds.width)/4
                self.person.center.x += (self.yellow.bounds.width)/4
                self.z = 1
            }else{
                self.door.center.x -= (self.yellow.bounds.width)/4
                self.person.center.x -= (self.yellow.bounds.width)/4
                self.z = 0
            }
        })
    }
}

