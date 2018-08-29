//
//  AuthViewControllerFactories.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

protocol AuthViewControllerFactories {
    func makeInitial() -> (UIViewController, Transitioning)
    func makeSignup() -> (UIViewController, Transitioning)
    func makeLogin() -> (UIViewController, Transitioning)
}
