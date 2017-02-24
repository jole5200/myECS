//
//  ViewController.swift
//  ATMecs
//
//  Created by qsi on 17/2/22.
//  Copyright © 2017年 qsi. All rights reserved.
//

import UIKit
import Crashlytics

class ViewController: UIViewController {
    var _mapView: BMKMapView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(type: UIButtonType.roundedRect)
        button.frame = CGRect(x:20, y:50,width: 100,height: 30)
        button.setTitle("Crash", for: UIControlState.normal)
        button.addTarget(self, action: #selector(crashButtonTapped(sender:)), for: UIControlEvents.touchUpInside)
        view.addSubview(button)
        
        _mapView = BMKMapView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.view.addSubview(_mapView!)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func crashButtonTapped(sender: AnyObject) {
        Crashlytics.sharedInstance().crash()
    }

    
 }

