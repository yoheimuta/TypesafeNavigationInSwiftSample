//
//  LoginFlow.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

struct LoginFlow {
    private let factory: LoginViewControllerFactories
    private init(_ factory: LoginViewControllerFactories) {
        self.factory = factory
    }

    static func initialState(factory: LoginViewControllerFactories)
        -> LoginFlowRoots {
        return LoginFlow(factory)
    }
}

extension LoginFlow: LoginFlowRoots {
    func toInitial(_ src: UIViewController) {
        let (dst, transition) = factory.makeInitial()
        transition.open(src, dst)
    }
}

extension LoginFlow: LoginFlowInitials {
    func toMemberSignup(_ src: UIViewController) {
        let (dst, transition) = factory.makeMemberSignup()
        transition.open(src, dst)
    }
    
    func toMemberLogin(_ src: UIViewController) {
        let (dst, transition) = factory.makeMemberLogin()
        transition.open(src, dst)
    }
}
