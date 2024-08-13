//
//  ViewController.swift
//  test1
//
//  Created by Huy vu on 13/8/24.
//

import UIKit

class ViewController: UIViewController {
    
    var is_Audio_Covert: Bool = false
    var is_check_VideoCompress = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func showIntermediateScreen(is_Audio_Covert: Bool ,is_check_VideoCompress: Bool){
        let videoPlayerViewController = Blue_ViewController.makeSelf(withAlbumName: is_Audio_Covert, is_check_VideoCompress: is_check_VideoCompress)
      
       
        
        self.navigationController?.pushViewController(videoPlayerViewController, animated: true)
        
      //  self.navigationController?.pushViewController(videoPlayerViewController, animated: false) // không hiệu ứng
    }
    
    
    
    func CATransition_test(is_Audio_Covert: Bool ,is_check_VideoCompress: Bool){
        let videoPlayerViewController = Blue_ViewController.makeSelf(withAlbumName: is_Audio_Covert, is_check_VideoCompress: is_check_VideoCompress)
      
        let transition = CATransition()
        transition.duration = 0.3
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        transition.type = .push
        transition.subtype = .fromLeft
        navigationController?.view.layer.add(transition, forKey: kCATransition)
        
        self.navigationController?.pushViewController(videoPlayerViewController, animated: true)
    }
    
    
    
    
    
  
    
    @IBAction func _True(_ sender: Any) {
        is_Audio_Covert = true
        showIntermediateScreen(is_Audio_Covert: is_Audio_Covert, is_check_VideoCompress: is_check_VideoCompress)
        
    }
    
    @IBAction func TargetViewController(_ sender: Any) {
        print("test huy")
        
        // Check if the navigation controller exists
        if let navigationController = self.navigationController {
            // Look for the TargetViewController in the view controllers stack
            for controller in navigationController.viewControllers {
                if controller is TargetViewController {
                    // Pop to the TargetViewController
                    navigationController.popToViewController(controller, animated: true)
                    return
                }
            }
            
            // If TargetViewController is not found in the stack, you might want to push it instead
            let targetVC = test1.TargetViewController.makeSelf()
            navigationController.pushViewController(targetVC, animated: true)
        }

    }
    
    
    
}

