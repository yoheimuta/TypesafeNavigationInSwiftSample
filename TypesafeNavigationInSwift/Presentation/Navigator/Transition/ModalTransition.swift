//
//  ModalTransition.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

struct ModalTransition: Transitioning {
    func open(_ src: UIViewController, _ dst: UIViewController) {
        src.present(dst, animated: true, completion: nil)
    }
    
    func close(_ vc: UIViewController) {
        vc.dismiss(animated: true, completion: nil)
    }
}
