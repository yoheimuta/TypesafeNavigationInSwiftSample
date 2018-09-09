//
//  ViewController.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var dep: Dependency!
    struct Dependency {
        let flow: AuthFlowRoots
    }
    
    static func make(dep: Dependency) -> ViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
            as! ViewController
        vc.dep = dep
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            self?.dep.flow.toInitial(self!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

