//
//  LoginViewControllerFactories.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

protocol LoginViewControllerFactories {
    func makeInitial() -> (UIViewController, Transitioning)
    func makeMemberSignup() -> (UIViewController, Transitioning)
    func makeMemberLogin() -> (UIViewController, Transitioning)
}
