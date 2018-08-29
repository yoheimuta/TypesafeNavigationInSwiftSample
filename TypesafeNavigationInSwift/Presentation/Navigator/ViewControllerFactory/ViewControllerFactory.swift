//
//  ViewControllerFactory.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

final class ViewControllerFactory {}

extension ViewControllerFactory: AuthViewControllerFactories {
    func makeInitial() -> (UIViewController, Transitioning) {
        return (UIViewController(), ModalTransition())
    }
    
    func makeSignup() -> (UIViewController, Transitioning) {
        return (UIViewController(), ModalTransition())
    }
    
    func makeLogin() -> (UIViewController, Transitioning) {
        return (UIViewController(), ModalTransition())
    }
}
