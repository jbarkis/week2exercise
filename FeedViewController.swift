//
//  FeedViewController.swift
//  week2exercise
//
//  Created by Hearsay Guest on 10/14/14.
//  Copyright (c) 2014 John Barkis. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var composeView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var homeView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var height = imageView.frame.size.height + composeView.frame.size.height
        
        scrollView.contentSize = CGSize(width: 320, height: height)
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.homeView.hidden = true
        delay(2, closure: { () -> () in
            self.homeView.hidden = false
        })
    }

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
