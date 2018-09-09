//
//  AuthInitialViewController.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/09/09.
//  Copyright © 2018 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

final class AuthInitialViewController: UIViewController, Injectable {
    @IBOutlet private var closeOutlet: UIBarButtonItem!
    @IBOutlet private var signupOutlet: UIButton!
    @IBOutlet private var loginOutlet: UIButton!
   
    typealias Dependency = ThisDependency

    private var dep: Dependency!
    struct ThisDependency {
        let flow: AuthFlowInitials
        let closable: CloseTransitioning
    }
    
    static func make(dep: Dependency) -> UIViewController {
        let nvc = UIStoryboard(name: "AuthInitial", bundle: nil).instantiateInitialViewController()
            as! UINavigationController
        let vc = nvc.topViewController as! AuthInitialViewController
        vc.dep = dep
        return nvc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeTapped(_ sender: AnyObject) {
        dep.closable.close(self)
    }
    
    @IBAction func signupTapped(_ sender: AnyObject) {
        dep.flow.toSignup(self)
    }
    
    @IBAction func loginTapped(_ sender: AnyObject) {
        dep.flow.toLogin(self)
    }
}
