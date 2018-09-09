//
//  AuthFlow.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

struct AuthFlow {
    private let factory: AuthViewControllerFactories
    private init(_ factory: AuthViewControllerFactories) {
        self.factory = factory
    }

    static func initialState(_ factory: AuthViewControllerFactories)
        -> AuthFlowRoots {
        return AuthFlow(factory)
    }
}

extension AuthFlow: AuthFlowRoots {
    func toInitial(_ src: UIViewController) {
        let (dst, transition) = factory.makeInitial(self)
        transition.open(src, dst)
    }
}

extension AuthFlow: AuthFlowInitials {
    func toSignup(_ src: UIViewController) {
        let (dst, transition) = factory.makeSignup()
        transition.open(src, dst)
    }
    
    func toLogin(_ src: UIViewController) {
        let (dst, transition) = factory.makeLogin()
        transition.open(src, dst)
    }
}

extension AuthFlow: AuthFlowSignups, AuthFlowLogins {
    func toEnd(_ src: UIViewController) {
        let transition = factory.makeEnd()
        transition.close(src)
    }
}
