//
//  NavigationTransition.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

struct NavigationTransition: Transitioning {
    func open(_ src: UIViewController, _ dst: UIViewController) {
        src.navigationController?.pushViewController(dst, animated: true)
    }
    
    func close(_ vc: UIViewController) {
        vc.navigationController?.popViewController(animated: true)
    }
}
