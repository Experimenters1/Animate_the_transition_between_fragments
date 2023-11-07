//
//  test1.swift
//  test
//
//  Created by Huy Vu on 11/7/23.
//

import UIKit

class test1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    static func makeSelf() -> test1 {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let All_filesViewController = storyboard.instantiateViewController(withIdentifier: "test1") as! test1
      
        return All_filesViewController
    }
    
    
    @IBAction func button2(_ sender: Any) {
        let videoPlayerViewController = ViewController.makeSelf()
            videoPlayerViewController.modalPresentationStyle = .fullScreen
        
        // Hide the navigation bar
        self.navigationController?.isNavigationBarHidden = true


            self.navigationController?.pushViewController(videoPlayerViewController, animated: false)
    }
    

}
