//
//  HomeTableViewController.swift
//  SeedsInTheConcrete
//
//  Created by Kenny Batista on 1/2/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    var SectionNamesCellData = ["The Book","The Album","The Cinema","Character Bio","App Features","SITC Store"];
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        
        //Give the table view a background image
        tableView.backgroundView = UIImageView(image: UIImage(named: "SITC Background (Purple)"))
        
        
        //Make separators go from edge to edge
        tableView.layoutMargins = UIEdgeInsetsZero
        tableView.separatorInset = UIEdgeInsetsZero
        
        // Set navigation bar background colour
        self.navigationController!.navigationBar.barTintColor = UIColor.blackColor()
        
        //Makes the nav title white
        self.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
       
        
    
    }
    
    
    
    
    
    
    //Changing Status Bar
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        
        //LightContent
        return UIStatusBarStyle.LightContent 
        
        //Default
        //return UIStatusBarStyle.Default - Black Text
        
    }

    
    
    
    
    
    
    
    

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SectionNamesCellData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SectionNamesCell", forIndexPath: indexPath)
        let secondCell = tableView.dequeueReusableCellWithIdentifier("TheBookCell", forIndexPath: indexPath) as! TheBookTableViewCell
        
        
        secondCell.imageView?.image = UIImage(named: "Background")

        //Makes cell go from edge to edge
        cell.layoutMargins = UIEdgeInsetsZero
        cell.textLabel?.text = SectionNamesCellData[indexPath.row]

        return cell
        
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

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
