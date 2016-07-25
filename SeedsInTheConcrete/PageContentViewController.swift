//
//  PageContentViewController.swift
//  SeedsInTheConcrete
//
//  Created by Kenny Batista on 12/27/15.
//  Copyright © 2015 Kenny Batista. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
    
    @IBOutlet weak var headingLabel:UILabel!
    @IBOutlet weak var subHeadingLabel:UILabel!
    @IBOutlet weak var contentImageView:UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var getStartedButton:UIButton!
    @IBOutlet weak var skipButton: UIButton!
    
//    
//@IBAction func getStartedCloseButton(sender:AnyObject){
//        
//    }
//    
//    @IBAction func skipCloseButton(sender:AnyObject){
////        dismissViewControllerAnimated(true, completion: nil)
//    }
//  
  

    
    var index : Int = 0; //Used to store the current page index
    
    //Our VC will show a heading,subheading, and image - So the following three variables are placeholders. The PageViewController will pass the data in .
    var heading : String = "";
    var imageFile : String = "";
    var subHeading : String = "";
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ALIGN TEXT TO CENTER AND TOP LEFT OF LABEL
        subHeadingLabel.textAlignment = NSTextAlignment.Center
        subHeadingLabel.numberOfLines = 0;
        subHeadingLabel.sizeToFit()
        
        //CONNECTING THE OBJECTS WITH THE DATA
        headingLabel.text = heading;
        subHeadingLabel.text = subHeading;
        contentImageView.image = UIImage(named: imageFile);
        
        //PAGE CONTROL
        pageControl.currentPage = index;
        
        //CONTROL VISIBILITY OF BUTTON; WILL ONLY SHOW ON THE THIRD VC (INDEX2);
        getStartedButton.hidden = (index == 6) ? false : true // Will hide from indexes 0 - 6
        
        skipButton.hidden = (index == 6) ? true : false // Will be visible from indexes 0 - 6
        

        
        
        
    
        
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
