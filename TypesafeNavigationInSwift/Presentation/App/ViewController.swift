//
//  ViewController.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            let authFlow = AuthFlow.initialState(ViewControllerFactory())
            authFlow.toInitial(self!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

