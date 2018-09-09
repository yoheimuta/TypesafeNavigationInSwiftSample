//
//  ViewControllerFactory+Auth.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/09/09.
//  Copyright © 2018 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

extension ViewControllerFactory: AuthViewControllerFactories {
    func makeInitial(_ flow: AuthFlowInitial) -> (UIViewController, Transitioning) {
        let trans = ModalTransition()
        let vc = AuthInitialViewController.make(dep: .init(
            flow: flow,
            closable: trans
        ))
        return (vc, trans)
    }
    
    func makeSignup(_ flow: AuthFlowSignup) -> (UIViewController, Transitioning) {
        let trans = NavigationTransition()
        let vc = AuthSignupViewController.make(dep: .init(
            flow: flow,
            closable: trans
        ))
        return (vc, trans)
    }
    
    func makeLogin(_ flow: AuthFlowLogin) -> (UIViewController, Transitioning) {
        let vc = AuthLoginViewController.make(dep: .init(
            flow: flow
        ))
        let trans = NavigationTransition()
        return (vc, trans)
    }
    
    func makeComplete() -> Transitioning {
        return ModalTransition()
    }
}
