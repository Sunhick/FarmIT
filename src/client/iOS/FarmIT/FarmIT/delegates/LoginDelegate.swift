//
//  LoginDelegate.swift
//  FarmIT
//
//  Created by Sunil on 7/8/17.
//  Copyright © 2017 Sunil. All rights reserved.
//

import Foundation

protocol LoginDelegate : Delegate {
    func loginStatus(_ status: Bool, _ msg: String)
}
