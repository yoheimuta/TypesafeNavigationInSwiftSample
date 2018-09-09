//
//  ViewControllerFactory+Auth.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/09/09.
//  Copyright © 2018 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

extension ViewControllerFactory: AuthViewControllerFactories {
    func makeInitial(_ flow: AuthFlowInitials) -> (UIViewController, Transitioning) {
        let trans = ModalTransition()
        let vc = AuthInitialViewController.make(dep: .init(
            flow: flow,
            closable: trans
        ))
        return (vc, trans)
    }
    
    func makeSignup() -> (UIViewController, Transitioning) {
        return (UIViewController(), NavigationTransition())
    }
    
    func makeLogin() -> (UIViewController, Transitioning) {
        return (UIViewController(), NavigationTransition())
    }
    
    func makeEnd() -> Transitioning {
        return ModalTransition()
    }
}
