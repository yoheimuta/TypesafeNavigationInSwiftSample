//
//  Navigator.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import Foundation

final class Navigator {
    typealias ViewControllerFactories = AuthViewControllerFactories
    
    private let factory: ViewControllerFactories
    init(_ factory: ViewControllerFactories) {
        self.factory = factory
    }
    
    func startAuthFlow(complete: @escaping AuthFlow.CompleteCallback)
        -> AuthFlowRoots {
        return AuthFlow.initialState(dep: .init(
            factory: factory,
            complete: complete
        ))
    }
}
