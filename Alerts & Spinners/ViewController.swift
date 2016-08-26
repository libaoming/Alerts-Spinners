//
//  ViewController.swift
//  Alerts & Spinners
//
//  Created by 李宝明 on 16/8/26.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var activity = UIActivityIndicatorView()
    
    
    
    @IBAction func createAlert(_ sender: AnyObject) {
        
        let alert = UIAlertController(title: "Master", message: "i am you alert , master.", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "click me , master", style: UIAlertActionStyle.default, handler: { (action) in
        
            print("i am clicked on alertAction")
            
            self.dismiss(animated: true, completion: nil)
        }))

        alert.addAction(UIAlertAction(title: "click me , master", style: UIAlertActionStyle.default, handler: { (action) in
            
            print("i am clicked on alertAction")
            
            self.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "click me , master", style: UIAlertActionStyle.default, handler: { (action) in
            
            print("i am clicked on alertAction")
            
            self.dismiss(animated: true, completion: nil)
        }))
    
        self.present(alert, animated: true, completion: nil)
        
        
    }

    @IBAction func onPauseApp(_ sender: AnyObject) {
        
        
        activity = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        activity.center = self.view.center
        
        activity.hidesWhenStopped = true
        
        activity.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        self.view.addSubview(activity)
        
        activity.startAnimating()
        
        //UIApplication.shared.beginIgnoringInteractionEvents()
        
        
    }
    @IBAction func restoreApp(_ sender: AnyObject) {
        
        activity.stopAnimating()
    }
    @IBOutlet weak var pauseApp: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

