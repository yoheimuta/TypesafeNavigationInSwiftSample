//
//  AuthSignupViewController.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/09/09.
//  Copyright © 2018 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

final class AuthSignupViewController: UIViewController {
    @IBOutlet private var submitOutlet: UIButton!

    private var dep: Dependency!
    struct Dependency {
        let flow: AuthFlowSignups
    }
    
    static func make(dep: Dependency) -> AuthSignupViewController {
        let vc = UIStoryboard(name: "AuthSignup", bundle: nil).instantiateInitialViewController()
            as! AuthSignupViewController
        vc.dep = dep
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitTapped(_ sender: AnyObject) {
        dep.flow.toEnd(self)
    }
}
