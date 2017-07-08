//
//  MainViewController.swift
//  FarmIT
//
//  Created by Sunil on 7/8/17.
//  Copyright © 2017 Sunil. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, LoginDelegate {
    
    let TAG = String(describing: MainViewController.self)
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(TAG + " Prepare")
        if let segueId = segue.identifier {
            switch segueId {
            case LoginIntent.id:
                if let dest = segue.destination as? LoginViewController {
                    let loginIntent = LoginIntent()
                    loginIntent.navigateBack = self
                    loginIntent.message = "data from main controller"
                    dest.intent = loginIntent
                }
                
                break
            default:
                break
            }
        }
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue,
                         towardsViewController subsequentVC: UIViewController) {
        print(TAG + " unwind")
        if let id = unwindSegue.identifier {
            print(TAG + id)
        }
    }
    
    func loginStatus(_ status: Bool, _ msg: String) {
        print(TAG + " Login status delegate " + msg);
        label?.text = msg
    }

}
