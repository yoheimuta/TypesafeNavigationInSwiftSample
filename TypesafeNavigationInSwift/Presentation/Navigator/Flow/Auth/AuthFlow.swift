//
//  AuthFlow.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

struct AuthFlow {
    typealias CompleteCallback = () -> ()
    struct Dependency {
        let factory: AuthViewControllerFactories
        let complete: CompleteCallback
    }
    
    private let dep: Dependency
    private init(_ dep: Dependency) {
        self.dep = dep
    }

    static func initialState(dep: Dependency) -> AuthFlowRoot {
        return AuthFlow(dep)
    }
}

extension AuthFlow: AuthFlowRoot {
    func toInitial(_ src: UIViewController) {
        let (dst, transition) = dep.factory.makeInitial(self)
        transition.open(src, dst)
    }
}

extension AuthFlow: AuthFlowInitial {
    func toSignup(_ src: UIViewController) {
        let (dst, transition) = dep.factory.makeSignup(self)
        transition.open(src, dst)
    }
    
    func toLogin(_ src: UIViewController) {
        let (dst, transition) = dep.factory.makeLogin(self)
        transition.open(src, dst)
    }
}

extension AuthFlow: AuthFlowSignup, AuthFlowLogin {
    func toComplete(_ src: UIViewController) {
        let transition = dep.factory.makeComplete()
        transition.close(src)
        
        dep.complete()
    }
}
