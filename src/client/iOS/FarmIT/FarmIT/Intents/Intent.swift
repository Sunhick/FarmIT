//
//  Intent.swift
//  FarmIT
//
//  Created by Sunil on 7/8/17.
//  Copyright © 2017 Sunil. All rights reserved.
//

import Foundation

protocol Intent {
    // Association identifier between intent and it's corresponding storyboard.
    static var id: String { get }
    static var name: String? { get }
    var navigateBack: Delegate? { get }
}
