//
//  LogInViewController.swift
//  SeedsInTheConcrete
//
//  Created by Kenny Batista on 12/27/15.
//  Copyright © 2015 Kenny Batista. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {


    @IBAction func cancelButton(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
