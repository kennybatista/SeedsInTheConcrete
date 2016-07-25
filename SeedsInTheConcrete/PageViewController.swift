//
//  PageViewController.swift
//  SeedsInTheConcrete
//
//  Created by Kenny Batista on 12/27/15.
//  Copyright © 2015 Kenny Batista. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    var pageImages = ["houseIcon","bookIcon","musicIcon","cameraIcon","vrIcon","commentIcon","cartIcon"];
    
    var pageHeadings = ["Seeds In The Concrete","The Book","The Album","The Cinema","The VR Experience","App Features", "SITC Store"];
    
    var pageSubHeadings = ["This is a tale of resilience,  learning, and recovering from mistakes. It is about faith, hope, and most of all, love. A rebirth to it’s greater stature, as when a boy becomes a man, and when a man turns on his lights t chase away the darkness within his mind by reevaluating himself. Seeds in the concrete is a thriller, drama, mystery, and an all over all love story in redemption. This is a story to inspire people to never be something they are not, but to be everything they can be.",
        
        "E-book available on any device, mixed with an audio experience.",
        
        "Stream storytelling music for free with local wifi or purchase to download and listen anywhere, anytime.",
        
        "Watch cinematic music videos. No ads. No fuzzy images. Just crystal clear films.",
        
        "Specialized and focused videos that supports the worlds leading creative Virtual Reality Filmmaking.","View app details, send your review, ask and answer questions based off the book, film, and or music.",
        
        "Shop for exclusive seeds in the concrete merchandise such as limited tees, hoodies, hats & more."];
    
    
    
    
    func pageViewController(pageViewController: UIPageViewController,
        viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var theIndex = (viewController as! PageContentViewController).index
        
        theIndex++
        
        return self.viewControllerAtIndex(theIndex)
    }
    
    func pageViewController(pageViewController: UIPageViewController,
            viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
            var theIndex = (viewController as! PageContentViewController).index
            
            theIndex--
            
            return self.viewControllerAtIndex(theIndex)
    }
    
    
    func viewControllerAtIndex(index: Int) -> PageContentViewController? {
        if index == NSNotFound || index < 0 || index >= self.pageHeadings.count {
        return nil
        }
        
        // Create a new view controller and pass suitable data.
        if let pageContentViewController =
        storyboard?.instantiateViewControllerWithIdentifier("PageContentViewController") as?
        PageContentViewController {
        pageContentViewController.imageFile = pageImages[index]
        pageContentViewController.heading = pageHeadings[index]
        pageContentViewController.subHeading = pageSubHeadings[index]
        pageContentViewController.index = index
        return pageContentViewController
        283
        }
        return nil
    }
    
    
    
    
    override func viewDidLoad() {
                super.viewDidLoad()
                // Set the data source to itself
                dataSource = self
                // Create the first walkthrough screen
                if let startingViewController = self.viewControllerAtIndex(0) {
                setViewControllers([startingViewController], direction: .Forward, animated: true,
                completion: nil)
            }
        
                //ADDING BACKGROUND IMAGE TO THE CONTROLLER, THIS IMAGE WILL STAY WHILE THE CONTENT SLIDES IN FRONT OF IT.
                let theImageView = UIImageView(frame: view.bounds)
                theImageView.contentMode = .ScaleAspectFit
                theImageView.image = UIImage(named: "SITC Background (Purple)")
                self.view.addSubview(theImageView)
                self.view.sendSubviewToBack(theImageView)
                
        
        
        }

    
    //CHANGING THE COLOR OF THE STATUS BAR
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        
        //LightContent
        return UIStatusBarStyle.LightContent
        
        //Default
        //return UIStatusBarStyle.Default - Black Text
        
    }

}
