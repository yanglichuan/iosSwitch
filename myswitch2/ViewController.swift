//
//  ViewController.swift
//  myswitch2
//
//  Created by  yanglc on 15/12/1.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    var s2:ZJSwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
  
        
        
        
         s2 = ZJSwitch(frame: CGRect(x: 100, y: 180, width: 80, height: 31));
        s2.backgroundColor = UIColor.clearColor();
        s2.tintColor = UIColor.orangeColor();
        s2.onText = "ON";
        s2.offText = "OFF";
        s2.addTarget(self, action: "handleSwitchEvent:", forControlEvents: UIControlEvents.ValueChanged);
        self.view.addSubview(s2);
        
        
    }
    
    func handleSwitchEvent(sender:AnyObject){
        print(__FUNCTION__);
        if(s2.on){
            print("open");
        }else{
            print("close");
        }
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

