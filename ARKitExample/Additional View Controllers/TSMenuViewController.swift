//
//  TSMenuViewController.swift
//  ARKitExample
//
//  Created by 华鹏张 on 2017/9/28.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate: class {
    func restartExperience()
}

class TSMenuViewController: UITableViewController {
    weak var delegate: ViewControllerDelegate?

    override func viewWillLayoutSubviews() {
        preferredContentSize.height = tableView.contentSize.height
    }
    
    // MARKS: Actions
    @IBAction func restart(_ sender: UIButton) {
        
        let rootVC:ViewController = UIApplication.shared.keyWindow?.rootViewController as! ViewController;
       
        rootVC.restartExperience(sender);
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func checkoutProducts(_ sender: UIButton) {
        UIApplication.shared.openURL(NSURL(string: "https://cn-sandbox.tradeshift.com")! as URL)
        self.dismiss(animated: true, completion: nil)
    }
}
