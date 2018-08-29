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
        let (dst, transition) = factory.makeInitial()
        transition.open(src, dst)
    }
}

extension AuthFlow: AuthFlowInitials {
    func toMemberSignup(_ src: UIViewController) {
        let (dst, transition) = factory.makeMemberSignup()
        transition.open(src, dst)
    }
    
    func toMemberLogin(_ src: UIViewController) {
        let (dst, transition) = factory.makeMemberLogin()
        transition.open(src, dst)
    }
}
