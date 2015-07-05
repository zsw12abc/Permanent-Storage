//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Shaowei Zhang on 15/7/5.
//  Copyright © 2015年 Shaowei Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //NSUserDefaults - Specific data for that user
        //create an object called name with the value, Shaowei
        NSUserDefaults.standardUserDefaults().setObject("Shaowei", forKey: "name")
        //retrieves it for us
        let name = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        print(name)
        
        let arr = [1,2,3]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        let recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array") as! NSArray
        print(recalledArray[2])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

