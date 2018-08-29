//
//  Transition.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

public protocol Transition: OpenTransition, CloseTransition {
}

public protocol OpenTransition {
    func open(_ src: UIViewController, _ dst: UIViewController)
}

public protocol CloseTransition {
    func close(_ vc: UIViewController)
}
