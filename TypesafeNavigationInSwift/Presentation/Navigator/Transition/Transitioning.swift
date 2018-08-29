//
//  Transitioning.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

public protocol Transitioning: OpenTransitioning, CloseTransitioning {
}

public protocol OpenTransitioning {
    func open(_ src: UIViewController, _ dst: UIViewController)
}

public protocol CloseTransitioning {
    func close(_ vc: UIViewController)
}
