//
//  AuthLoginViewController.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/09/09.
//  Copyright © 2018 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

final class AuthLoginViewController: UIViewController {
    @IBOutlet private var submitOutlet: UIButton!
    
    private var dep: Dependency!
    struct Dependency {
        let flow: AuthFlowLogins
    }
    
    static func make(dep: Dependency) -> AuthLoginViewController {
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
