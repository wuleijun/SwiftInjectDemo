//
//  ViewController.swift
//  SwiftInjectDemo
//
//  Created by 吴蕾君 on 16/5/11.
//  Copyright © 2016年 rayjuneWu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showDisplayViewController" {
      let displayVC = segue.destinationViewController as! DemoDisplayViewController
      //if comment this line，app will crash,Try it!
      displayVC.inject("im a text")
    }
  }
  
}

