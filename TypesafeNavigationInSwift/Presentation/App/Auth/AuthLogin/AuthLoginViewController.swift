//
//  AuthLoginViewController.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/09/09.
//  Copyright © 2018 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

final class AuthLoginViewController: UIViewController, Injectable {
    @IBOutlet private var submitOutlet: UIButton!
    
    typealias Dependency = ThisDependency
    
    private var dep: Dependency!
    struct ThisDependency {
        let flow: AuthFlowLogins
    }
    
    static func make(dep: Dependency) -> UIViewController {
        let vc = UIStoryboard(name: "AuthLogin", bundle: nil).instantiateInitialViewController()
            as! AuthLoginViewController
        vc.dep = dep
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitTapped(_ sender: AnyObject) {
        dep.flow.toComplete(self)
    }
}
