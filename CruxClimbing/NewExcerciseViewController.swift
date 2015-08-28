//
//  NewExcerciseViewController.swift
//  CruxClimbing
//
//  Created by Worth Baker on 8/28/15.
//  Copyright © 2015 Worth Baker. All rights reserved.
//

import UIKit

class NewExcerciseViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.yellowColor()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func doneButtonTapped(sender: AnyObject) {
    self.presentingViewController?.dismissViewControllerAnimated(true, completion: { () -> Void in
      //
    })
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
