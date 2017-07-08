//
//  LoginViewController.swift
//  FarmIT
//
//  Created by Sunil on 7/8/17.
//  Copyright © 2017 Sunil. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let TAG = String(describing: LoginViewController.self)
    
    var intent: LoginIntent?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let msg = intent?.message {
            
            print("got message:" + msg)
            label?.text = msg
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func didMove(toParentViewController parent: UIViewController?) {
        if (parent == nil) {
            if let receiver = intent?.navigateBack as? LoginDelegate {
                receiver.loginStatus(true, "Authenticated")
            }
        }
    }
}
