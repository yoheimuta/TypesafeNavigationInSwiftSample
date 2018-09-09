//
//  Navigator.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import Foundation

final class Navigator {
    private let factory: ViewControllerFactory
    init(_ factory: ViewControllerFactory) {
        self.factory = factory
    }
    
    func startAuthFlow(complete: @escaping AuthFlow.CompleteCallback)
        -> AuthFlowRoot {
        return AuthFlow.initialState(dep: .init(
            factory: factory,
            complete: complete
        ))
    }
}
