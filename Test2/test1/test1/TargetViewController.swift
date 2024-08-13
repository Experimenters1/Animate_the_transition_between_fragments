//
//  TargetViewController.swift
//  test1
//
//  Created by Huy vu on 13/8/24.
//

import UIKit

class TargetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    static func makeSelf() -> TargetViewController{
        let storybroad: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let All_filesViewController = storybroad.instantiateViewController(withIdentifier: "TargetViewController") as! TargetViewController
        
        return All_filesViewController
    }
}
