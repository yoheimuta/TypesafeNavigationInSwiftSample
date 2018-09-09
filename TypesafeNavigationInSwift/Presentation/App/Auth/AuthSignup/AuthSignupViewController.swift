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
    @IBOutlet private var forceBackOutlet: UIButton!

    private var dep: Dependency!
    struct Dependency {
        let flow: AuthFlowSignup
        let closable: CloseTransitioning
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
        dep.flow.toComplete(self)
    }
    
    @IBAction func forceBackTapped(_ sender: AnyObject) {
        dep.closable.close(self)
    }
}
