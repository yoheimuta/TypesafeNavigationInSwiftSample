//
//  AuthViewControllerFactories.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

protocol AuthViewControllerFactories {
    func makeInitial(_ flow: AuthFlowInitials) -> (UIViewController, Transitioning)
    func makeSignup(_ flow: AuthFlowSignups) -> (UIViewController, Transitioning)
    func makeLogin(_ flow: AuthFlowLogins) -> (UIViewController, Transitioning)
    func makeEnd() -> Transitioning
}
