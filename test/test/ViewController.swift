//
//  ViewController.swift
//  test
//
//  Created by Huy Vu on 11/7/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    
    @IBAction func button(_ sender: Any) {
        let videoPlayerViewController = test1.makeSelf()
            videoPlayerViewController.modalPresentationStyle = .fullScreen
        
        // Hide the navigation bar
        self.navigationController?.isNavigationBarHidden = true


            self.navigationController?.pushViewController(videoPlayerViewController, animated: false)
    }
    
    
    static func makeSelf() -> ViewController {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let All_filesViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
      
        return All_filesViewController
    }
    
    


}

