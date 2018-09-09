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

    static func initialState(dep: Dependency) -> AuthFlowRoots {
        return AuthFlow(dep)
    }
}

extension AuthFlow: AuthFlowRoots {
    func toInitial(_ src: UIViewController) {
        let (dst, transition) = dep.factory.makeInitial(self)
        transition.open(src, dst)
    }
}

extension AuthFlow: AuthFlowInitials {
    func toSignup(_ src: UIViewController) {
        let (dst, transition) = dep.factory.makeSignup(self)
        transition.open(src, dst)
    }
    
    func toLogin(_ src: UIViewController) {
        let (dst, transition) = dep.factory.makeLogin(self)
        transition.open(src, dst)
    }
}

extension AuthFlow: AuthFlowSignups, AuthFlowLogins {
    func toEnd(_ src: UIViewController) {
        let transition = dep.factory.makeEnd()
        transition.close(src)
        
        dep.complete()
    }
}
