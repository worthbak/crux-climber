//
//  CCTableViewController.swift
//  CruxClimbing
//
//  Created by Worth Baker on 8/28/15.
//  Copyright © 2015 Worth Baker. All rights reserved.
//

import UIKit

class CCTableViewController: UITableViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem()
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    guard let identifier = segue.identifier else { return }
    
    switch identifier {
    case "TimerSegue":
      if let timer = segue.destinationViewController as? TimerViewController {
        timer.count = self.tableView.numberOfRowsInSection(0) - 1
      }
    default:
      return
    }
    
  }
  
  // MARK: - Table view data source
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "Routine 1"
  }
  
  override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 30
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
    
    // Configure the cell...
    
    if indexPath.row == tableView.numberOfRowsInSection(0) - 1 {
      cell.textLabel?.text = "add an excercise"
      cell.textLabel?.textColor = UIColor.grayColor()
      cell.textLabel?.textAlignment = .Center
      
    } else {
      cell.textLabel?.text = "hello"
    }
    
    return cell
  }
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    if indexPath.row == tableView.numberOfRowsInSection(0) - 1 {
      self.performSegueWithIdentifier("NewExerciseSegue", sender: nil)
    } else {
      self.performSegueWithIdentifier("WorkoutSegue", sender: nil)
    }
  }
  
  
  /*
  // Override to support conditional editing of the table view.
  override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
  // Return false if you do not want the specified item to be editable.
  return true
  }
  */
  
  /*
  // Override to support editing the table view.
  override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
  if editingStyle == .Delete {
  // Delete the row from the data source
  tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
  } else if editingStyle == .Insert {
  // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
  }
  }
  */
  
}
