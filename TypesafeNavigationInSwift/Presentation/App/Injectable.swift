//
//  Injectable.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/09/09.
//  Copyright © 2018 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

protocol Injectable {
    associatedtype Dependency
    static func make(dep: Dependency) -> UIViewController
}
