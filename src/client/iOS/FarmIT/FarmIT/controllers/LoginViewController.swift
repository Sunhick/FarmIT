//
//  LoginViewController.swift
//  FarmIT
//
//  Created by Sunil on 7/8/17.
//  Copyright © 2017 Sunil. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var intent: LoginIntent?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let msg = intent?.message {
            print(msg)
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

}
