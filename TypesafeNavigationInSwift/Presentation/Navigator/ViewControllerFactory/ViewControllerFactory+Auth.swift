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
    
    func makeSignup(_ flow: AuthFlowSignups) -> (UIViewController, Transitioning) {
        let trans = NavigationTransition()
        let vc = AuthSignupViewController.make(dep: .init(
            flow: flow,
            closable: trans
        ))
        return (vc, trans)
    }
    
    func makeLogin(_ flow: AuthFlowLogins) -> (UIViewController, Transitioning) {
        let vc = AuthLoginViewController.make(dep: .init(
            flow: flow
        ))
        let trans = NavigationTransition()
        return (vc, trans)
    }
    
    func makeEnd() -> Transitioning {
        return ModalTransition()
    }
}
