//
//  DemoDisplayViewController.swift
//  SwiftInjectDemo
//
//  Created by 吴蕾君 on 16/5/11.
//  Copyright © 2016年 rayjuneWu. All rights reserved.
//

import UIKit

class DemoDisplayViewController: UIViewController,Injectable {
  
  @IBOutlet weak var displayLabel: UILabel!
  
  private var displayText:String!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    assertDependencies()
    displayLabel.text = displayText
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}

extension DemoDisplayViewController {
  func inject(text: String) {
    displayText = text
  }
  
  func assertDependencies() {
    assert(displayText != nil, "displayText can not be nil!")
  }
}